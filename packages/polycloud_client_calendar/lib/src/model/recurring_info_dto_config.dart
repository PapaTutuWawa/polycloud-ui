//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:polycloud_client_calendar/src/model/monthly_repetition_config_dto.dart';
import 'package:polycloud_client_calendar/src/model/weekly_repetition_config_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:polycloud_client_calendar/src/model/repetition_config_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'recurring_info_dto_config.g.dart';

/// RecurringInfoDtoConfig
///
/// Properties:
/// * [type] 
/// * [sameDay] 
/// * [weekdays] 
@BuiltValue()
abstract class RecurringInfoDtoConfig implements Built<RecurringInfoDtoConfig, RecurringInfoDtoConfigBuilder> {
  /// One Of [MonthlyRepetitionConfigDto], [RepetitionConfigDto], [WeeklyRepetitionConfigDto]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'MonthlyRepetitionConfigDto': MonthlyRepetitionConfigDto,
    r'RepetitionConfigDto': RepetitionConfigDto,
    r'WeeklyRepetitionConfigDto': WeeklyRepetitionConfigDto,
  };

  RecurringInfoDtoConfig._();

  factory RecurringInfoDtoConfig([void updates(RecurringInfoDtoConfigBuilder b)]) = _$RecurringInfoDtoConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecurringInfoDtoConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecurringInfoDtoConfig> get serializer => _$RecurringInfoDtoConfigSerializer();
}

extension RecurringInfoDtoConfigDiscriminatorExt on RecurringInfoDtoConfig {
    String? get discriminatorValue {
        if (this is MonthlyRepetitionConfigDto) {
            return r'MonthlyRepetitionConfigDto';
        }
        if (this is RepetitionConfigDto) {
            return r'RepetitionConfigDto';
        }
        if (this is WeeklyRepetitionConfigDto) {
            return r'WeeklyRepetitionConfigDto';
        }
        return null;
    }
}
extension RecurringInfoDtoConfigBuilderDiscriminatorExt on RecurringInfoDtoConfigBuilder {
    String? get discriminatorValue {
        if (this is MonthlyRepetitionConfigDtoBuilder) {
            return r'MonthlyRepetitionConfigDto';
        }
        if (this is RepetitionConfigDtoBuilder) {
            return r'RepetitionConfigDto';
        }
        if (this is WeeklyRepetitionConfigDtoBuilder) {
            return r'WeeklyRepetitionConfigDto';
        }
        return null;
    }
}

class _$RecurringInfoDtoConfigSerializer implements PrimitiveSerializer<RecurringInfoDtoConfig> {
  @override
  final Iterable<Type> types = const [RecurringInfoDtoConfig, _$RecurringInfoDtoConfig];

  @override
  final String wireName = r'RecurringInfoDtoConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecurringInfoDtoConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    RecurringInfoDtoConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  RecurringInfoDtoConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecurringInfoDtoConfigBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(RecurringInfoDtoConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [MonthlyRepetitionConfigDto, RepetitionConfigDto, WeeklyRepetitionConfigDto, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'MonthlyRepetitionConfigDto':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(MonthlyRepetitionConfigDto),
        ) as MonthlyRepetitionConfigDto;
        oneOfType = MonthlyRepetitionConfigDto;
        break;
      case r'RepetitionConfigDto':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(RepetitionConfigDto),
        ) as RepetitionConfigDto;
        oneOfType = RepetitionConfigDto;
        break;
      case r'WeeklyRepetitionConfigDto':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(WeeklyRepetitionConfigDto),
        ) as WeeklyRepetitionConfigDto;
        oneOfType = WeeklyRepetitionConfigDto;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}


