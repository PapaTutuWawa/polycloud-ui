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
import 'package:polycloud_client_core/src/date_serializer.dart';
import 'package:polycloud_client_core/src/model/date.dart';

import 'package:polycloud_client_core/src/model/auth_mechanism_dto.dart';
import 'package:polycloud_client_core/src/model/auth_mechanisms_dto.dart';
import 'package:polycloud_client_core/src/model/enabled_app_dto.dart';
import 'package:polycloud_client_core/src/model/enabled_apps_dto.dart';
import 'package:polycloud_client_core/src/model/health_dto.dart';
import 'package:polycloud_client_core/src/model/token.dart';
import 'package:polycloud_client_core/src/model/token_refresh_dto.dart';
import 'package:polycloud_client_core/src/model/who_am_i_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthMechanismDto,
  AuthMechanismsDto,
  EnabledAppDto,
  EnabledAppsDto,
  HealthDto,
  Token,
  TokenRefreshDto,
  WhoAmIDto,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(String)]),
        () => MapBuilder<String, String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(EnabledAppDto)]),
        () => ListBuilder<EnabledAppDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AuthMechanismDto)]),
        () => ListBuilder<AuthMechanismDto>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
