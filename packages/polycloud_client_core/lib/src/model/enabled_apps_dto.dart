//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:polycloud_client_core/src/model/enabled_app_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enabled_apps_dto.g.dart';

/// EnabledAppsDto
///
/// Properties:
/// * [apps] 
@BuiltValue()
abstract class EnabledAppsDto implements Built<EnabledAppsDto, EnabledAppsDtoBuilder> {
  @BuiltValueField(wireName: r'apps')
  BuiltList<EnabledAppDto>? get apps;

  EnabledAppsDto._();

  factory EnabledAppsDto([void updates(EnabledAppsDtoBuilder b)]) = _$EnabledAppsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnabledAppsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnabledAppsDto> get serializer => _$EnabledAppsDtoSerializer();
}

class _$EnabledAppsDtoSerializer implements PrimitiveSerializer<EnabledAppsDto> {
  @override
  final Iterable<Type> types = const [EnabledAppsDto, _$EnabledAppsDto];

  @override
  final String wireName = r'EnabledAppsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnabledAppsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apps != null) {
      yield r'apps';
      yield serializers.serialize(
        object.apps,
        specifiedType: const FullType(BuiltList, [FullType(EnabledAppDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EnabledAppsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EnabledAppsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EnabledAppDto)]),
          ) as BuiltList<EnabledAppDto>?;
          if (valueDes == null) continue;
          result.apps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnabledAppsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnabledAppsDtoBuilder();
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


