//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:polycloud_client_core/src/model/auth_mechanism_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_mechanisms_dto.g.dart';

/// AuthMechanismsDto
///
/// Properties:
/// * [mechanisms] 
@BuiltValue()
abstract class AuthMechanismsDto implements Built<AuthMechanismsDto, AuthMechanismsDtoBuilder> {
  @BuiltValueField(wireName: r'mechanisms')
  BuiltList<AuthMechanismDto>? get mechanisms;

  AuthMechanismsDto._();

  factory AuthMechanismsDto([void updates(AuthMechanismsDtoBuilder b)]) = _$AuthMechanismsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthMechanismsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthMechanismsDto> get serializer => _$AuthMechanismsDtoSerializer();
}

class _$AuthMechanismsDtoSerializer implements PrimitiveSerializer<AuthMechanismsDto> {
  @override
  final Iterable<Type> types = const [AuthMechanismsDto, _$AuthMechanismsDto];

  @override
  final String wireName = r'AuthMechanismsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthMechanismsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mechanisms != null) {
      yield r'mechanisms';
      yield serializers.serialize(
        object.mechanisms,
        specifiedType: const FullType(BuiltList, [FullType(AuthMechanismDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthMechanismsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthMechanismsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mechanisms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AuthMechanismDto)]),
          ) as BuiltList<AuthMechanismDto>?;
          if (valueDes == null) continue;
          result.mechanisms.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthMechanismsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthMechanismsDtoBuilder();
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


