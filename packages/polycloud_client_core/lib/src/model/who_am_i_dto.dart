//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'who_am_i_dto.g.dart';

/// WhoAmIDto
///
/// Properties:
/// * [username] 
/// * [roles] 
@BuiltValue()
abstract class WhoAmIDto implements Built<WhoAmIDto, WhoAmIDtoBuilder> {
  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'roles')
  BuiltList<String>? get roles;

  WhoAmIDto._();

  factory WhoAmIDto([void updates(WhoAmIDtoBuilder b)]) = _$WhoAmIDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WhoAmIDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WhoAmIDto> get serializer => _$WhoAmIDtoSerializer();
}

class _$WhoAmIDtoSerializer implements PrimitiveSerializer<WhoAmIDto> {
  @override
  final Iterable<Type> types = const [WhoAmIDto, _$WhoAmIDto];

  @override
  final String wireName = r'WhoAmIDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WhoAmIDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WhoAmIDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WhoAmIDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WhoAmIDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WhoAmIDtoBuilder();
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


