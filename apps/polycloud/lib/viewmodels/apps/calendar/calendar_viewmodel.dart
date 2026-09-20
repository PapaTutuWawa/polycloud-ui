import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:polycloud/models/calendar/event.dart';
import 'package:polycloud/repositories/calendar_repository.dart';
import 'package:polycloud/state/apps/calendar/calendar_state.dart';
import 'package:polycloud/state/auth_check_state.dart';
import 'package:polycloud/viewmodels/auth_check_viewmodel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/calendar/calendar.dart';

part 'calendar_viewmodel.g.dart';

class CalendarAccess {
  final String? calendarId;

  final bool public;

  const CalendarAccess(this.calendarId, this.public);

  @override
  bool operator ==(Object other) {
    return other is CalendarAccess &&
        other.public == public &&
        other.calendarId == other.calendarId;
  }

  @override
  int get hashCode => Object.hash(calendarId, public);
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

    final calendar = calendarAccess.calendarId != null
        ? await calendarRepo.fetchCalendar(
            authToken,
            calendarAccess.calendarId!,
          )
        : null;
    final events = calendarAccess.calendarId != null
        ? await calendarRepo.fetchEvents(authToken, calendarAccess.calendarId!)
        : <EventModel>[];
    final calendars = calendarAccess.public
        ? <CalendarModel>[]
        : await calendarRepo.fetchCalendars(authToken!);
    return CalendarState(calendars, calendar, events, null);
  }

  /// Selects an event from the list for display. If [event] is null, then the
  /// selection is reset.
  void selectEvent(EventModel? event) {
    state = AsyncValue.data(state.requireValue.copyWith(selectedEvent: event));
  }

  Future<void> loadCalendar(String calendarId) async {
    state = AsyncValue.loading();
    final result = await _fetchCalendarState(CalendarAccess(calendarId, false));
    state = AsyncValue.data(result);
  }
}
