// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add(AuthMechanismDto.serializer)
      ..add(AuthMechanismsDto.serializer)
      ..add(EnabledAppDto.serializer)
      ..add(EnabledAppsDto.serializer)
      ..add(HealthDto.serializer)
      ..add(Token.serializer)
      ..add(TokenRefreshDto.serializer)
      ..add(WhoAmIDto.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AuthMechanismDto)]),
          () => ListBuilder<AuthMechanismDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EnabledAppDto)]),
          () => ListBuilder<EnabledAppDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
