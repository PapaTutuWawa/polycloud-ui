import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:polycloud/apps/calendar/models/calendar.dart';
import 'package:polycloud/apps/calendar/models/event.dart';
import 'package:polycloud/apps/calendar/widgets/range_picker.dart';

part 'calendar_state.g.dart';

enum CalendarMode {
  /// Display the entire week (Mon - Sun).
  fullWeek,
}

/// UI state for the calendar view model.
@CopyWith()
class CalendarState {
  /// The calendars that the user has access to.
  final List<CalendarModel> calendars;

  /// Events associated with the calendar.
  final List<EventModel> events;

  /// The currently selected event.
  final EventModel? selectedEvent;

  /// What does the calendar look like.
  final CalendarMode displayMode;

  /// The time range (only dates are considered) that is displayed.
  final TimeRange displayRange;

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
    this.displayMode,
    this.displayRange,
  );
}
