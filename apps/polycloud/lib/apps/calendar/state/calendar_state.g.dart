// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CalendarStateCWProxy {
  CalendarState calendars(List<CalendarModel> calendars);

  CalendarState events(List<EventModel> events);

  CalendarState selectedEvent(EventModel? selectedEvent);

  CalendarState selectedCalendars(List<String> selectedCalendars);

  CalendarState selectedCalendar(CalendarModel? selectedCalendar);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CalendarState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CalendarState(...).copyWith(id: 12, name: "My name")
  /// ```
  CalendarState call({
    List<CalendarModel> calendars,
    List<EventModel> events,
    EventModel? selectedEvent,
    List<String> selectedCalendars,
    CalendarModel? selectedCalendar,
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
  CalendarState events(List<EventModel> events) => call(events: events);

  @override
  CalendarState selectedEvent(EventModel? selectedEvent) =>
      call(selectedEvent: selectedEvent);

  @override
  CalendarState selectedCalendars(List<String> selectedCalendars) =>
      call(selectedCalendars: selectedCalendars);

  @override
  CalendarState selectedCalendar(CalendarModel? selectedCalendar) =>
      call(selectedCalendar: selectedCalendar);

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
    Object? events = const $CopyWithPlaceholder(),
    Object? selectedEvent = const $CopyWithPlaceholder(),
    Object? selectedCalendars = const $CopyWithPlaceholder(),
    Object? selectedCalendar = const $CopyWithPlaceholder(),
  }) {
    return CalendarState(
      calendars == const $CopyWithPlaceholder() || calendars == null
          ? _value.calendars
          // ignore: cast_nullable_to_non_nullable
          : calendars as List<CalendarModel>,
      events == const $CopyWithPlaceholder() || events == null
          ? _value.events
          // ignore: cast_nullable_to_non_nullable
          : events as List<EventModel>,
      selectedEvent == const $CopyWithPlaceholder()
          ? _value.selectedEvent
          // ignore: cast_nullable_to_non_nullable
          : selectedEvent as EventModel?,
      selectedCalendars == const $CopyWithPlaceholder() ||
              selectedCalendars == null
          ? _value.selectedCalendars
          // ignore: cast_nullable_to_non_nullable
          : selectedCalendars as List<String>,
      selectedCalendar == const $CopyWithPlaceholder()
          ? _value.selectedCalendar
          // ignore: cast_nullable_to_non_nullable
          : selectedCalendar as CalendarModel?,
    );
  }
}

extension $CalendarStateCopyWith on CalendarState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCalendarState.copyWith(...)` or `instanceOfCalendarState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CalendarStateCWProxy get copyWith => _$CalendarStateCWProxyImpl(this);
}
