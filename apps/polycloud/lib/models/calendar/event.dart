/// DTO class for calendar events.
class EventModel {
  /// The ID of the event.
  final String id;

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

  const EventModel(
    this.id,
    this.title,
    this.description,
    this.start,
    this.end,
    this.calendar,
    this.allDay,
  );
}
