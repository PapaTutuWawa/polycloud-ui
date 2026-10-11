import 'dart:ui';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:polycloud/apps/calendar/widgets/range_picker.dart';
import 'package:polycloud_client_calendar/polycloud_client_calendar.dart';

part 'event.g.dart';

/// DTO class for calendar events.
@CopyWith()
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

  /// Is the event repeating.
  final bool repeating;

  /// The list of event participants.
  final List<String> participants;

  /// The frequency at which the event repeats.
  final RecurringInfoDtoFrequencyEnum? frequency;

  /// The repeat configuration.
  final RepetitionConfigDto? repeatConfig;

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
    this.repeating,
    this.frequency,
    this.repeatConfig,
  );

  /// Returns the time range that the event is modeling.
  TimeRange timeRange() {
    return TimeRange(start, end);
  }
}
