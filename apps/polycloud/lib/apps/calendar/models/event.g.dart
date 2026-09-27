// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventModelCWProxy {
  EventModel id(String id);

  EventModel internalId(String? internalId);

  EventModel title(String title);

  EventModel description(String? description);

  EventModel start(DateTime start);

  EventModel end(DateTime end);

  EventModel calendar(String calendar);

  EventModel allDay(bool allDay);

  EventModel color(Color color);

  EventModel place(String? place);

  EventModel participants(List<String> participants);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventModel(...).copyWith(id: 12, name: "My name")
  /// ```
  EventModel call({
    String id,
    String? internalId,
    String title,
    String? description,
    DateTime start,
    DateTime end,
    String calendar,
    bool allDay,
    Color color,
    String? place,
    List<String> participants,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEventModel.copyWith(...)` or call `instanceOfEventModel.copyWith.fieldName(value)` for a single field.
class _$EventModelCWProxyImpl implements _$EventModelCWProxy {
  const _$EventModelCWProxyImpl(this._value);

  final EventModel _value;

  @override
  EventModel id(String id) => call(id: id);

  @override
  EventModel internalId(String? internalId) => call(internalId: internalId);

  @override
  EventModel title(String title) => call(title: title);

  @override
  EventModel description(String? description) => call(description: description);

  @override
  EventModel start(DateTime start) => call(start: start);

  @override
  EventModel end(DateTime end) => call(end: end);

  @override
  EventModel calendar(String calendar) => call(calendar: calendar);

  @override
  EventModel allDay(bool allDay) => call(allDay: allDay);

  @override
  EventModel color(Color color) => call(color: color);

  @override
  EventModel place(String? place) => call(place: place);

  @override
  EventModel participants(List<String> participants) =>
      call(participants: participants);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventModel(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventModel(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  EventModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? internalId = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? start = const $CopyWithPlaceholder(),
    Object? end = const $CopyWithPlaceholder(),
    Object? calendar = const $CopyWithPlaceholder(),
    Object? allDay = const $CopyWithPlaceholder(),
    Object? color = const $CopyWithPlaceholder(),
    Object? place = const $CopyWithPlaceholder(),
    Object? participants = const $CopyWithPlaceholder(),
  }) {
    return EventModel(
      id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      internalId == const $CopyWithPlaceholder()
          ? _value.internalId
          // ignore: cast_nullable_to_non_nullable
          : internalId as String?,
      title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      start == const $CopyWithPlaceholder() || start == null
          ? _value.start
          // ignore: cast_nullable_to_non_nullable
          : start as DateTime,
      end == const $CopyWithPlaceholder() || end == null
          ? _value.end
          // ignore: cast_nullable_to_non_nullable
          : end as DateTime,
      calendar == const $CopyWithPlaceholder() || calendar == null
          ? _value.calendar
          // ignore: cast_nullable_to_non_nullable
          : calendar as String,
      allDay == const $CopyWithPlaceholder() || allDay == null
          ? _value.allDay
          // ignore: cast_nullable_to_non_nullable
          : allDay as bool,
      color == const $CopyWithPlaceholder() || color == null
          ? _value.color
          // ignore: cast_nullable_to_non_nullable
          : color as Color,
      place == const $CopyWithPlaceholder()
          ? _value.place
          // ignore: cast_nullable_to_non_nullable
          : place as String?,
      participants == const $CopyWithPlaceholder() || participants == null
          ? _value.participants
          // ignore: cast_nullable_to_non_nullable
          : participants as List<String>,
    );
  }
}

extension $EventModelCopyWith on EventModel {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEventModel.copyWith(...)` or `instanceOfEventModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventModelCWProxy get copyWith => _$EventModelCWProxyImpl(this);
}
