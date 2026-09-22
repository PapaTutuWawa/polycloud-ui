import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:polycloud/apps/calendar/models/calendar.dart';
import 'package:polycloud/apps/calendar/models/event.dart';

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

  /// Calendar that the user has selected, i.e. clicked on.
  final CalendarModel? selectedCalendar;

  const CalendarState(
    this.calendars,
    this.events,
    this.selectedEvent,
    this.selectedCalendars,
    this.selectedCalendar,
  );
}
