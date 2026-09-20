//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:polycloud_client_calendar/src/date_serializer.dart';
import 'package:polycloud_client_calendar/src/model/date.dart';

import 'package:polycloud_client_calendar/src/model/calendar_creation_request_dto.dart';
import 'package:polycloud_client_calendar/src/model/calendar_dto.dart';
import 'package:polycloud_client_calendar/src/model/event_creation_request_dto.dart';
import 'package:polycloud_client_calendar/src/model/event_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  CalendarCreationRequestDto,
  CalendarDto,
  EventCreationRequestDto,
  EventDto,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CalendarDto)]),
        () => ListBuilder<CalendarDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(EventDto)]),
        () => ListBuilder<EventDto>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
