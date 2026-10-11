//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:polycloud_client_calendar/src/model/repetition_config_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'monthly_repetition_config_dto.g.dart';

/// MonthlyRepetitionConfigDto
///
/// Properties:
/// * [type] 
/// * [sameDay] 
@BuiltValue()
abstract class MonthlyRepetitionConfigDto implements RepetitionConfigDto, Built<MonthlyRepetitionConfigDto, MonthlyRepetitionConfigDtoBuilder> {
  @BuiltValueField(wireName: r'sameDay')
  bool? get sameDay;

  MonthlyRepetitionConfigDto._();

  factory MonthlyRepetitionConfigDto([void updates(MonthlyRepetitionConfigDtoBuilder b)]) = _$MonthlyRepetitionConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MonthlyRepetitionConfigDtoBuilder b) => b..type=b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<MonthlyRepetitionConfigDto> get serializer => _$MonthlyRepetitionConfigDtoSerializer();
}

class _$MonthlyRepetitionConfigDtoSerializer implements PrimitiveSerializer<MonthlyRepetitionConfigDto> {
  @override
  final Iterable<Type> types = const [MonthlyRepetitionConfigDto, _$MonthlyRepetitionConfigDto];

  @override
  final String wireName = r'MonthlyRepetitionConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MonthlyRepetitionConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.sameDay != null) {
      yield r'sameDay';
      yield serializers.serialize(
        object.sameDay,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MonthlyRepetitionConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MonthlyRepetitionConfigDtoBuilder result,
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
        case r'sameDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sameDay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MonthlyRepetitionConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MonthlyRepetitionConfigDtoBuilder();
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


