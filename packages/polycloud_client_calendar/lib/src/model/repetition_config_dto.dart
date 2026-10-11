//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repetition_config_dto.g.dart';

/// RepetitionConfigDto
///
/// Properties:
/// * [sameDay] 
/// * [weekdays] 
/// * [repeatStarts] 
@BuiltValue()
abstract class RepetitionConfigDto implements Built<RepetitionConfigDto, RepetitionConfigDtoBuilder> {
  @BuiltValueField(wireName: r'sameDay')
  bool? get sameDay;

  @BuiltValueField(wireName: r'weekdays')
  BuiltList<int>? get weekdays;

  @BuiltValueField(wireName: r'repeatStarts')
  DateTime? get repeatStarts;

  RepetitionConfigDto._();

  factory RepetitionConfigDto([void updates(RepetitionConfigDtoBuilder b)]) = _$RepetitionConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RepetitionConfigDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RepetitionConfigDto> get serializer => _$RepetitionConfigDtoSerializer();
}

class _$RepetitionConfigDtoSerializer implements PrimitiveSerializer<RepetitionConfigDto> {
  @override
  final Iterable<Type> types = const [RepetitionConfigDto, _$RepetitionConfigDto];

  @override
  final String wireName = r'RepetitionConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RepetitionConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sameDay != null) {
      yield r'sameDay';
      yield serializers.serialize(
        object.sameDay,
        specifiedType: const FullType(bool),
      );
    }
    if (object.weekdays != null) {
      yield r'weekdays';
      yield serializers.serialize(
        object.weekdays,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.repeatStarts != null) {
      yield r'repeatStarts';
      yield serializers.serialize(
        object.repeatStarts,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RepetitionConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RepetitionConfigDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sameDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sameDay = valueDes;
          break;
        case r'weekdays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.weekdays.replace(valueDes);
          break;
        case r'repeatStarts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.repeatStarts = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RepetitionConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RepetitionConfigDtoBuilder();
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


