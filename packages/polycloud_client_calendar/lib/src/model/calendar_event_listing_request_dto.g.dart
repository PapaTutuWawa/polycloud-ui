// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_event_listing_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarEventListingRequestDto extends CalendarEventListingRequestDto {
  @override
  final BuiltList<String>? calendars;

  factory _$CalendarEventListingRequestDto([
    void Function(CalendarEventListingRequestDtoBuilder)? updates,
  ]) => (CalendarEventListingRequestDtoBuilder()..update(updates))._build();

  _$CalendarEventListingRequestDto._({this.calendars}) : super._();
  @override
  CalendarEventListingRequestDto rebuild(
    void Function(CalendarEventListingRequestDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CalendarEventListingRequestDtoBuilder toBuilder() =>
      CalendarEventListingRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarEventListingRequestDto &&
        calendars == other.calendars;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, calendars.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'CalendarEventListingRequestDto',
    )..add('calendars', calendars)).toString();
  }
}

class CalendarEventListingRequestDtoBuilder
    implements
        Builder<
          CalendarEventListingRequestDto,
          CalendarEventListingRequestDtoBuilder
        > {
  _$CalendarEventListingRequestDto? _$v;

  ListBuilder<String>? _calendars;
  ListBuilder<String> get calendars =>
      _$this._calendars ??= ListBuilder<String>();
  set calendars(ListBuilder<String>? calendars) =>
      _$this._calendars = calendars;

  CalendarEventListingRequestDtoBuilder() {
    CalendarEventListingRequestDto._defaults(this);
  }

  CalendarEventListingRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calendars = $v.calendars?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarEventListingRequestDto other) {
    _$v = other as _$CalendarEventListingRequestDto;
  }

  @override
  void update(void Function(CalendarEventListingRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarEventListingRequestDto build() => _build();

  _$CalendarEventListingRequestDto _build() {
    _$CalendarEventListingRequestDto _$result;
    try {
      _$result =
          _$v ??
          _$CalendarEventListingRequestDto._(calendars: _calendars?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'calendars';
        _calendars?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CalendarEventListingRequestDto',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
