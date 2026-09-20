// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventDto extends EventDto {
  @override
  final String? id;
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

  factory _$EventDto([void Function(EventDtoBuilder)? updates]) =>
      (EventDtoBuilder()..update(updates))._build();

  _$EventDto._({
    this.id,
    this.title,
    this.description,
    this.start,
    this.end,
    this.allDay,
    this.place,
  }) : super._();
  @override
  EventDto rebuild(void Function(EventDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventDtoBuilder toBuilder() => EventDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventDto &&
        id == other.id &&
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
    _$hash = $jc(_$hash, id.hashCode);
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
    return (newBuiltValueToStringHelper(r'EventDto')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('start', start)
          ..add('end', end)
          ..add('allDay', allDay)
          ..add('place', place))
        .toString();
  }
}

class EventDtoBuilder implements Builder<EventDto, EventDtoBuilder> {
  _$EventDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  EventDtoBuilder() {
    EventDto._defaults(this);
  }

  EventDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
  void replace(EventDto other) {
    _$v = other as _$EventDto;
  }

  @override
  void update(void Function(EventDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventDto build() => _build();

  _$EventDto _build() {
    final _$result =
        _$v ??
        _$EventDto._(
          id: id,
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
