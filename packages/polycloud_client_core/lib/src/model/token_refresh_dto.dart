//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:polycloud_client_core/src/model/token.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_refresh_dto.g.dart';

/// TokenRefreshDto
///
/// Properties:
/// * [auth] 
/// * [refresh] 
@BuiltValue()
abstract class TokenRefreshDto implements Built<TokenRefreshDto, TokenRefreshDtoBuilder> {
  @BuiltValueField(wireName: r'auth')
  Token? get auth;

  @BuiltValueField(wireName: r'refresh')
  Token? get refresh;

  TokenRefreshDto._();

  factory TokenRefreshDto([void updates(TokenRefreshDtoBuilder b)]) = _$TokenRefreshDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenRefreshDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenRefreshDto> get serializer => _$TokenRefreshDtoSerializer();
}

class _$TokenRefreshDtoSerializer implements PrimitiveSerializer<TokenRefreshDto> {
  @override
  final Iterable<Type> types = const [TokenRefreshDto, _$TokenRefreshDto];

  @override
  final String wireName = r'TokenRefreshDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenRefreshDto object, {
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
    TokenRefreshDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenRefreshDtoBuilder result,
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
  TokenRefreshDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenRefreshDtoBuilder();
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


