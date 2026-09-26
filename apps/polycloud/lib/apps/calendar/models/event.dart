import 'dart:ui';

import 'package:polycloud/apps/calendar/widgets/range_picker.dart';

/// DTO class for calendar events.
class EventModel {
  /// The ID of the event.
  final String id;

  /// ID of the event if it was created client-side. Should not be used.
  final String? internalId;

  /// The title of the event.
  final String title;

  /// The description of the event.
  final String? description;

  /// The start time of the event.
  final DateTime start;

  /// The end time of the event.
  final DateTime end;

  /// THe ID of the calendar this event belongs to.
  final String calendar;

  /// Is the event an all-day event?
  final bool allDay;

  /// Calendar's color.
  final Color color;

  /// The place the event is occurring.
  final String? place;

  /// The list of event participants.
  final List<String> participants;

  const EventModel(
    this.id,
    this.internalId,
    this.title,
    this.description,
    this.start,
    this.end,
    this.calendar,
    this.allDay,
    this.color,
    this.place,
    this.participants,
  );

  /// Returns the time range that the event is modeling.
  TimeRange timeRange() {
    return TimeRange(start, end);
  }
}
