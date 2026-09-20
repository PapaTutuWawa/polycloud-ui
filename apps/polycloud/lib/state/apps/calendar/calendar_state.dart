import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:polycloud/models/calendar/calendar.dart';
import 'package:polycloud/models/calendar/event.dart';

part 'calendar_state.g.dart';

/// UI state for the calendar view model.
@CopyWith()
class CalendarState {
  /// The calendars that the user has access to.
  final List<CalendarModel> calendars;

  /// Events associated with the calendar.
  final List<EventModel> events;

  /// The currently selected event.
  final EventModel? selectedEvent;

  /// Selected calendar UUIDs to request.
  final List<String> selectedCalendars;

  const CalendarState(
    this.calendars,
    this.events,
    this.selectedEvent,
    this.selectedCalendars,
  );
}
