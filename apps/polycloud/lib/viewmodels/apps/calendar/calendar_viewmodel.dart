import 'package:flutter/services.dart';
import 'package:polycloud/models/calendar/event.dart';
import 'package:polycloud/repositories/calendar_repository.dart';
import 'package:polycloud/state/apps/calendar/calendar_state.dart';
import 'package:polycloud/state/auth_check_state.dart';
import 'package:polycloud/viewmodels/auth_check_viewmodel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/calendar/calendar.dart';

part 'calendar_viewmodel.g.dart';

class CalendarAccess {
  final List<String>? calendars;

  final bool public;

  const CalendarAccess(this.calendars, this.public);

  @override
  bool operator ==(Object other) {
    return other is CalendarAccess &&
        other.public == public &&
        other.calendars == other.calendars;
  }

  @override
  int get hashCode => Object.hash(calendars, public);
}

@riverpod
class CalendarViewModel extends _$CalendarViewModel {
  @override
  Future<CalendarState> build(CalendarAccess calendarAccess) {
    return _fetchCalendarState(calendarAccess);
  }

  Future<CalendarState> _fetchCalendarState(
    CalendarAccess calendarAccess,
  ) async {
    final calendarRepo = ref.read(calendarRepositoryProvider);
    final authState = ref.read(authCheckProvider);
    final authToken = calendarAccess.public
        ? null
        : (authState as Authenticated).authToken;

    final calendars = calendarAccess.public
        // To allow the display logic to reuse already existing fields,
        // load the single calendar when we have read a public calendar.
        ? [
            await calendarRepo.fetchCalendar(null, calendarAccess.calendars![0]),
          ]
        : await calendarRepo.fetchCalendars(authToken!);

    // Either request the list of calendars given to us, or fall back to all
    // calendars that the user has access to.
    final calendarsToRequest = calendarAccess.calendars ?? calendars.map((el) => el.id).toList();
    final events = await calendarRepo.fetchEvents(authToken, calendarsToRequest);

    return CalendarState(
      calendars,
      events,
      null,
      calendarsToRequest,
    );
  }

  /// Selects an event from the list for display. If [event] is null, then the
  /// selection is reset.
  void selectEvent(EventModel? event) {
    state = AsyncValue.data(state.requireValue.copyWith(selectedEvent: event));
  }

  /// Changes the list of active calendars to either include ([active] is true)
  /// the calendar with ID [id] or remove ([active] is false) the calendar with
  /// ID [id] from the active calendar list. Then triggers a reload.
  Future<void> toggleCalendarActive(String id, bool active) async {
    final newActive = List.of(state.requireValue.selectedCalendars);
    if (active) {
      newActive.add(id);
    } else {
      newActive.remove(id);
    }

    state = AsyncValue.loading();
    final result = await _fetchCalendarState(CalendarAccess(newActive, false));
    state = AsyncValue.data(result);
  }

  Future<void> copyCalendarLinkToClipboard(String id) async {
    // TODO: Add a global helper that can get the base URL of the UI.
    final baseUrl = 'http://localhost:7070';
    await Clipboard.setData(
      ClipboardData(text: '$baseUrl/public/calendar/$id'),
    );
  }
}
