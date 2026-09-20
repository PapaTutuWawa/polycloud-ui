/// DTO class for calendar events.
class EventModel {
  /// The ID of the event.
  final String id;

  /// The title of the event.
  final String title;

  /// The start time of the event.
  final DateTime start;

  /// The end time of the event.
  final DateTime end;

  const EventModel(this.id, this.title, this.start, this.end);
}
