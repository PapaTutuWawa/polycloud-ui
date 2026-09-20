// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_creation_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventCreationRequestDto extends EventCreationRequestDto {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final bool? allDay;
  @override
  final String? place;

  factory _$EventCreationRequestDto([
    void Function(EventCreationRequestDtoBuilder)? updates,
  ]) => (EventCreationRequestDtoBuilder()..update(updates))._build();

  _$EventCreationRequestDto._({
    this.title,
    this.description,
    this.start,
    this.end,
    this.allDay,
    this.place,
  }) : super._();
  @override
  EventCreationRequestDto rebuild(
    void Function(EventCreationRequestDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EventCreationRequestDtoBuilder toBuilder() =>
      EventCreationRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventCreationRequestDto &&
        title == other.title &&
        description == other.description &&
        start == other.start &&
        end == other.end &&
        allDay == other.allDay &&
        place == other.place;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, allDay.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventCreationRequestDto')
          ..add('title', title)
          ..add('description', description)
          ..add('start', start)
          ..add('end', end)
          ..add('allDay', allDay)
          ..add('place', place))
        .toString();
  }
}

class EventCreationRequestDtoBuilder
    implements
        Builder<EventCreationRequestDto, EventCreationRequestDtoBuilder> {
  _$EventCreationRequestDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  bool? _allDay;
  bool? get allDay => _$this._allDay;
  set allDay(bool? allDay) => _$this._allDay = allDay;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  EventCreationRequestDtoBuilder() {
    EventCreationRequestDto._defaults(this);
  }

  EventCreationRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _start = $v.start;
      _end = $v.end;
      _allDay = $v.allDay;
      _place = $v.place;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventCreationRequestDto other) {
    _$v = other as _$EventCreationRequestDto;
  }

  @override
  void update(void Function(EventCreationRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventCreationRequestDto build() => _build();

  _$EventCreationRequestDto _build() {
    final _$result =
        _$v ??
        _$EventCreationRequestDto._(
          title: title,
          description: description,
          start: start,
          end: end,
          allDay: allDay,
          place: place,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
