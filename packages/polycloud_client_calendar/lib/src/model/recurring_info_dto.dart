//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:polycloud_client_calendar/src/model/repetition_config_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recurring_info_dto.g.dart';

/// RecurringInfoDto
///
/// Properties:
/// * [frequency] 
/// * [config] 
@BuiltValue()
abstract class RecurringInfoDto implements Built<RecurringInfoDto, RecurringInfoDtoBuilder> {
  @BuiltValueField(wireName: r'frequency')
  RecurringInfoDtoFrequencyEnum? get frequency;
  // enum frequencyEnum {  DAILY,  WEEKLY,  MONTHLY,  YEARLY,  };

  @BuiltValueField(wireName: r'config')
  RepetitionConfigDto? get config;

  RecurringInfoDto._();

  factory RecurringInfoDto([void updates(RecurringInfoDtoBuilder b)]) = _$RecurringInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecurringInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecurringInfoDto> get serializer => _$RecurringInfoDtoSerializer();
}

class _$RecurringInfoDtoSerializer implements PrimitiveSerializer<RecurringInfoDto> {
  @override
  final Iterable<Type> types = const [RecurringInfoDto, _$RecurringInfoDto];

  @override
  final String wireName = r'RecurringInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecurringInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(RecurringInfoDtoFrequencyEnum),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(RepetitionConfigDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecurringInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecurringInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecurringInfoDtoFrequencyEnum),
          ) as RecurringInfoDtoFrequencyEnum?;
          if (valueDes == null) continue;
          result.frequency = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RepetitionConfigDto),
          ) as RepetitionConfigDto?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecurringInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecurringInfoDtoBuilder();
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


class RecurringInfoDtoFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'DAILY')
  static const RecurringInfoDtoFrequencyEnum DAILY = _$recurringInfoDtoFrequencyEnum_DAILY;
  @BuiltValueEnumConst(wireName: r'WEEKLY')
  static const RecurringInfoDtoFrequencyEnum WEEKLY = _$recurringInfoDtoFrequencyEnum_WEEKLY;
  @BuiltValueEnumConst(wireName: r'MONTHLY')
  static const RecurringInfoDtoFrequencyEnum MONTHLY = _$recurringInfoDtoFrequencyEnum_MONTHLY;
  @BuiltValueEnumConst(wireName: r'YEARLY')
  static const RecurringInfoDtoFrequencyEnum YEARLY = _$recurringInfoDtoFrequencyEnum_YEARLY;

  static Serializer<RecurringInfoDtoFrequencyEnum> get serializer => _$recurringInfoDtoFrequencyEnumSerializer;

  const RecurringInfoDtoFrequencyEnum._(String name): super(name);

  static BuiltSet<RecurringInfoDtoFrequencyEnum> get values => _$recurringInfoDtoFrequencyEnumValues;
  static RecurringInfoDtoFrequencyEnum valueOf(String name) => _$recurringInfoDtoFrequencyEnumValueOf(name);
}

