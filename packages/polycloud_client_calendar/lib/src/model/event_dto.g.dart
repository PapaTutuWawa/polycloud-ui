// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EventDtoVirtualEventTypeEnum _$eventDtoVirtualEventTypeEnum_RECURRING =
    const EventDtoVirtualEventTypeEnum._('RECURRING');

EventDtoVirtualEventTypeEnum _$eventDtoVirtualEventTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'RECURRING':
      return _$eventDtoVirtualEventTypeEnum_RECURRING;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EventDtoVirtualEventTypeEnum>
_$eventDtoVirtualEventTypeEnumValues = BuiltSet<EventDtoVirtualEventTypeEnum>(
  const <EventDtoVirtualEventTypeEnum>[
    _$eventDtoVirtualEventTypeEnum_RECURRING,
  ],
);

Serializer<EventDtoVirtualEventTypeEnum>
_$eventDtoVirtualEventTypeEnumSerializer =
    _$EventDtoVirtualEventTypeEnumSerializer();

class _$EventDtoVirtualEventTypeEnumSerializer
    implements PrimitiveSerializer<EventDtoVirtualEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RECURRING': 'RECURRING',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RECURRING': 'RECURRING',
  };

  @override
  final Iterable<Type> types = const <Type>[EventDtoVirtualEventTypeEnum];
  @override
  final String wireName = 'EventDtoVirtualEventTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EventDtoVirtualEventTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EventDtoVirtualEventTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EventDtoVirtualEventTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

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
  @override
  final String? calendar;
  @override
  final String? color;
  @override
  final bool? virtual;
  @override
  final String? virtualParentId;
  @override
  final int? virtualId;
  @override
  final EventDtoVirtualEventTypeEnum? virtualEventType;
  @override
  final RecurringInfoDto? repeatInfo;

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
    this.calendar,
    this.color,
    this.virtual,
    this.virtualParentId,
    this.virtualId,
    this.virtualEventType,
    this.repeatInfo,
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
        place == other.place &&
        calendar == other.calendar &&
        color == other.color &&
        virtual == other.virtual &&
        virtualParentId == other.virtualParentId &&
        virtualId == other.virtualId &&
        virtualEventType == other.virtualEventType &&
        repeatInfo == other.repeatInfo;
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
    _$hash = $jc(_$hash, calendar.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, virtual.hashCode);
    _$hash = $jc(_$hash, virtualParentId.hashCode);
    _$hash = $jc(_$hash, virtualId.hashCode);
    _$hash = $jc(_$hash, virtualEventType.hashCode);
    _$hash = $jc(_$hash, repeatInfo.hashCode);
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
          ..add('place', place)
          ..add('calendar', calendar)
          ..add('color', color)
          ..add('virtual', virtual)
          ..add('virtualParentId', virtualParentId)
          ..add('virtualId', virtualId)
          ..add('virtualEventType', virtualEventType)
          ..add('repeatInfo', repeatInfo))
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

  String? _calendar;
  String? get calendar => _$this._calendar;
  set calendar(String? calendar) => _$this._calendar = calendar;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  bool? _virtual;
  bool? get virtual => _$this._virtual;
  set virtual(bool? virtual) => _$this._virtual = virtual;

  String? _virtualParentId;
  String? get virtualParentId => _$this._virtualParentId;
  set virtualParentId(String? virtualParentId) =>
      _$this._virtualParentId = virtualParentId;

  int? _virtualId;
  int? get virtualId => _$this._virtualId;
  set virtualId(int? virtualId) => _$this._virtualId = virtualId;

  EventDtoVirtualEventTypeEnum? _virtualEventType;
  EventDtoVirtualEventTypeEnum? get virtualEventType =>
      _$this._virtualEventType;
  set virtualEventType(EventDtoVirtualEventTypeEnum? virtualEventType) =>
      _$this._virtualEventType = virtualEventType;

  RecurringInfoDtoBuilder? _repeatInfo;
  RecurringInfoDtoBuilder get repeatInfo =>
      _$this._repeatInfo ??= RecurringInfoDtoBuilder();
  set repeatInfo(RecurringInfoDtoBuilder? repeatInfo) =>
      _$this._repeatInfo = repeatInfo;

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
      _calendar = $v.calendar;
      _color = $v.color;
      _virtual = $v.virtual;
      _virtualParentId = $v.virtualParentId;
      _virtualId = $v.virtualId;
      _virtualEventType = $v.virtualEventType;
      _repeatInfo = $v.repeatInfo?.toBuilder();
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
    _$EventDto _$result;
    try {
      _$result =
          _$v ??
          _$EventDto._(
            id: id,
            title: title,
            description: description,
            start: start,
            end: end,
            allDay: allDay,
            place: place,
            calendar: calendar,
            color: color,
            virtual: virtual,
            virtualParentId: virtualParentId,
            virtualId: virtualId,
            virtualEventType: virtualEventType,
            repeatInfo: _repeatInfo?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repeatInfo';
        _repeatInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EventDto',
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
