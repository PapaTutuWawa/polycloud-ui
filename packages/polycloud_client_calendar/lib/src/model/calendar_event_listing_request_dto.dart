//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar_event_listing_request_dto.g.dart';

/// CalendarEventListingRequestDto
///
/// Properties:
/// * [calendars] 
@BuiltValue()
abstract class CalendarEventListingRequestDto implements Built<CalendarEventListingRequestDto, CalendarEventListingRequestDtoBuilder> {
  @BuiltValueField(wireName: r'calendars')
  BuiltList<String>? get calendars;

  CalendarEventListingRequestDto._();

  factory CalendarEventListingRequestDto([void updates(CalendarEventListingRequestDtoBuilder b)]) = _$CalendarEventListingRequestDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalendarEventListingRequestDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CalendarEventListingRequestDto> get serializer => _$CalendarEventListingRequestDtoSerializer();
}

class _$CalendarEventListingRequestDtoSerializer implements PrimitiveSerializer<CalendarEventListingRequestDto> {
  @override
  final Iterable<Type> types = const [CalendarEventListingRequestDto, _$CalendarEventListingRequestDto];

  @override
  final String wireName = r'CalendarEventListingRequestDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalendarEventListingRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.calendars != null) {
      yield r'calendars';
      yield serializers.serialize(
        object.calendars,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CalendarEventListingRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalendarEventListingRequestDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'calendars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.calendars.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CalendarEventListingRequestDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalendarEventListingRequestDtoBuilder();
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


