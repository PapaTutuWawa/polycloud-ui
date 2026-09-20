//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:polycloud_client_oidc/src/model/token.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_result.g.dart';

/// AuthResult
///
/// Properties:
/// * [auth] 
/// * [refresh] 
@BuiltValue()
abstract class AuthResult implements Built<AuthResult, AuthResultBuilder> {
  @BuiltValueField(wireName: r'auth')
  Token? get auth;

  @BuiltValueField(wireName: r'refresh')
  Token? get refresh;

  AuthResult._();

  factory AuthResult([void updates(AuthResultBuilder b)]) = _$AuthResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthResult> get serializer => _$AuthResultSerializer();
}

class _$AuthResultSerializer implements PrimitiveSerializer<AuthResult> {
  @override
  final Iterable<Type> types = const [AuthResult, _$AuthResult];

  @override
  final String wireName = r'AuthResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.auth != null) {
      yield r'auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(Token),
      );
    }
    if (object.refresh != null) {
      yield r'refresh';
      yield serializers.serialize(
        object.refresh,
        specifiedType: const FullType(Token),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Token),
          ) as Token?;
          if (valueDes == null) continue;
          result.auth.replace(valueDes);
          break;
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Token),
          ) as Token?;
          if (valueDes == null) continue;
          result.refresh.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthResultBuilder();
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


