/// DTO class representing a calendar as provided by the API.
class CalendarModel {
  /// The ID of the calendar.
  final String id;

  /// The name of the calendar.
  final String name;

  /// Flag controlling whether the calendar is public or not.
  final bool public;

  const CalendarModel(this.id, this.name, this.public);
}
