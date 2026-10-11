//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:polycloud_client_calendar/src/model/recurring_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_dto.g.dart';

/// EventDto
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [description] 
/// * [start] 
/// * [end] 
/// * [allDay] 
/// * [place] 
/// * [calendar] 
/// * [color] 
/// * [virtual] 
/// * [virtualParentId] 
/// * [virtualId] 
/// * [virtualEventType] 
/// * [repeatInfo] 
@BuiltValue()
abstract class EventDto implements Built<EventDto, EventDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'start')
  DateTime? get start;

  @BuiltValueField(wireName: r'end')
  DateTime? get end;

  @BuiltValueField(wireName: r'allDay')
  bool? get allDay;

  @BuiltValueField(wireName: r'place')
  String? get place;

  @BuiltValueField(wireName: r'calendar')
  String? get calendar;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'virtual')
  bool? get virtual;

  @BuiltValueField(wireName: r'virtualParentId')
  String? get virtualParentId;

  @BuiltValueField(wireName: r'virtualId')
  int? get virtualId;

  @BuiltValueField(wireName: r'virtualEventType')
  EventDtoVirtualEventTypeEnum? get virtualEventType;
  // enum virtualEventTypeEnum {  RECURRING,  };

  @BuiltValueField(wireName: r'repeatInfo')
  RecurringInfoDto? get repeatInfo;

  EventDto._();

  factory EventDto([void updates(EventDtoBuilder b)]) = _$EventDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventDto> get serializer => _$EventDtoSerializer();
}

class _$EventDtoSerializer implements PrimitiveSerializer<EventDto> {
  @override
  final Iterable<Type> types = const [EventDto, _$EventDto];

  @override
  final String wireName = r'EventDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.allDay != null) {
      yield r'allDay';
      yield serializers.serialize(
        object.allDay,
        specifiedType: const FullType(bool),
      );
    }
    if (object.place != null) {
      yield r'place';
      yield serializers.serialize(
        object.place,
        specifiedType: const FullType(String),
      );
    }
    if (object.calendar != null) {
      yield r'calendar';
      yield serializers.serialize(
        object.calendar,
        specifiedType: const FullType(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
    if (object.virtual != null) {
      yield r'virtual';
      yield serializers.serialize(
        object.virtual,
        specifiedType: const FullType(bool),
      );
    }
    if (object.virtualParentId != null) {
      yield r'virtualParentId';
      yield serializers.serialize(
        object.virtualParentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.virtualId != null) {
      yield r'virtualId';
      yield serializers.serialize(
        object.virtualId,
        specifiedType: const FullType(int),
      );
    }
    if (object.virtualEventType != null) {
      yield r'virtualEventType';
      yield serializers.serialize(
        object.virtualEventType,
        specifiedType: const FullType(EventDtoVirtualEventTypeEnum),
      );
    }
    if (object.repeatInfo != null) {
      yield r'repeatInfo';
      yield serializers.serialize(
        object.repeatInfo,
        specifiedType: const FullType(RecurringInfoDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.end = valueDes;
          break;
        case r'allDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allDay = valueDes;
          break;
        case r'place':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.place = valueDes;
          break;
        case r'calendar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.calendar = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'virtual':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.virtual = valueDes;
          break;
        case r'virtualParentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.virtualParentId = valueDes;
          break;
        case r'virtualId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.virtualId = valueDes;
          break;
        case r'virtualEventType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EventDtoVirtualEventTypeEnum),
          ) as EventDtoVirtualEventTypeEnum?;
          if (valueDes == null) continue;
          result.virtualEventType = valueDes;
          break;
        case r'repeatInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecurringInfoDto),
          ) as RecurringInfoDto?;
          if (valueDes == null) continue;
          result.repeatInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


class EventDtoVirtualEventTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'RECURRING')
  static const EventDtoVirtualEventTypeEnum RECURRING = _$eventDtoVirtualEventTypeEnum_RECURRING;

  static Serializer<EventDtoVirtualEventTypeEnum> get serializer => _$eventDtoVirtualEventTypeEnumSerializer;

  const EventDtoVirtualEventTypeEnum._(String name): super(name);

  static BuiltSet<EventDtoVirtualEventTypeEnum> get values => _$eventDtoVirtualEventTypeEnumValues;
  static EventDtoVirtualEventTypeEnum valueOf(String name) => _$eventDtoVirtualEventTypeEnumValueOf(name);
}

