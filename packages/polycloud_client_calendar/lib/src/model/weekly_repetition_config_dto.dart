//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:polycloud_client_calendar/src/model/repetition_config_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weekly_repetition_config_dto.g.dart';

/// WeeklyRepetitionConfigDto
///
/// Properties:
/// * [type] 
/// * [weekdays] 
@BuiltValue()
abstract class WeeklyRepetitionConfigDto implements RepetitionConfigDto, Built<WeeklyRepetitionConfigDto, WeeklyRepetitionConfigDtoBuilder> {
  @BuiltValueField(wireName: r'weekdays')
  BuiltList<int>? get weekdays;

  WeeklyRepetitionConfigDto._();

  factory WeeklyRepetitionConfigDto([void updates(WeeklyRepetitionConfigDtoBuilder b)]) = _$WeeklyRepetitionConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeeklyRepetitionConfigDtoBuilder b) => b..type=b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeeklyRepetitionConfigDto> get serializer => _$WeeklyRepetitionConfigDtoSerializer();
}

class _$WeeklyRepetitionConfigDtoSerializer implements PrimitiveSerializer<WeeklyRepetitionConfigDto> {
  @override
  final Iterable<Type> types = const [WeeklyRepetitionConfigDto, _$WeeklyRepetitionConfigDto];

  @override
  final String wireName = r'WeeklyRepetitionConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeeklyRepetitionConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.weekdays != null) {
      yield r'weekdays';
      yield serializers.serialize(
        object.weekdays,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeeklyRepetitionConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WeeklyRepetitionConfigDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'weekdays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.weekdays.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeeklyRepetitionConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeeklyRepetitionConfigDtoBuilder();
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


