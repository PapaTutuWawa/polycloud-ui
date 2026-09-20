// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CalendarStateCWProxy {
  CalendarState calendars(List<CalendarModel> calendars);

  CalendarState calendar(CalendarModel? calendar);

  CalendarState events(List<EventModel> events);

  CalendarState selectedEvent(EventModel? selectedEvent);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CalendarState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CalendarState(...).copyWith(id: 12, name: "My name")
  /// ```
  CalendarState call({
    List<CalendarModel> calendars,
    CalendarModel? calendar,
    List<EventModel> events,
    EventModel? selectedEvent,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCalendarState.copyWith(...)` or call `instanceOfCalendarState.copyWith.fieldName(value)` for a single field.
class _$CalendarStateCWProxyImpl implements _$CalendarStateCWProxy {
  const _$CalendarStateCWProxyImpl(this._value);

  final CalendarState _value;

  @override
  CalendarState calendars(List<CalendarModel> calendars) =>
      call(calendars: calendars);

  @override
  CalendarState calendar(CalendarModel? calendar) => call(calendar: calendar);

  @override
  CalendarState events(List<EventModel> events) => call(events: events);

  @override
  CalendarState selectedEvent(EventModel? selectedEvent) =>
      call(selectedEvent: selectedEvent);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CalendarState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CalendarState(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  CalendarState call({
    Object? calendars = const $CopyWithPlaceholder(),
    Object? calendar = const $CopyWithPlaceholder(),
    Object? events = const $CopyWithPlaceholder(),
    Object? selectedEvent = const $CopyWithPlaceholder(),
  }) {
    return CalendarState(
      calendars == const $CopyWithPlaceholder() || calendars == null
          ? _value.calendars
          // ignore: cast_nullable_to_non_nullable
          : calendars as List<CalendarModel>,
      calendar == const $CopyWithPlaceholder()
          ? _value.calendar
          // ignore: cast_nullable_to_non_nullable
          : calendar as CalendarModel?,
      events == const $CopyWithPlaceholder() || events == null
          ? _value.events
          // ignore: cast_nullable_to_non_nullable
          : events as List<EventModel>,
      selectedEvent == const $CopyWithPlaceholder()
          ? _value.selectedEvent
          // ignore: cast_nullable_to_non_nullable
          : selectedEvent as EventModel?,
    );
  }
}

extension $CalendarStateCopyWith on CalendarState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCalendarState.copyWith(...)` or `instanceOfCalendarState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CalendarStateCWProxy get copyWith => _$CalendarStateCWProxyImpl(this);
}
