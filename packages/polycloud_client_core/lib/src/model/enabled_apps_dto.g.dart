// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enabled_apps_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnabledAppsDto extends EnabledAppsDto {
  @override
  final BuiltList<EnabledAppDto>? apps;

  factory _$EnabledAppsDto([void Function(EnabledAppsDtoBuilder)? updates]) =>
      (EnabledAppsDtoBuilder()..update(updates))._build();

  _$EnabledAppsDto._({this.apps}) : super._();
  @override
  EnabledAppsDto rebuild(void Function(EnabledAppsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnabledAppsDtoBuilder toBuilder() => EnabledAppsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnabledAppsDto && apps == other.apps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnabledAppsDto')..add('apps', apps))
        .toString();
  }
}

class EnabledAppsDtoBuilder
    implements Builder<EnabledAppsDto, EnabledAppsDtoBuilder> {
  _$EnabledAppsDto? _$v;

  ListBuilder<EnabledAppDto>? _apps;
  ListBuilder<EnabledAppDto> get apps =>
      _$this._apps ??= ListBuilder<EnabledAppDto>();
  set apps(ListBuilder<EnabledAppDto>? apps) => _$this._apps = apps;

  EnabledAppsDtoBuilder() {
    EnabledAppsDto._defaults(this);
  }

  EnabledAppsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apps = $v.apps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnabledAppsDto other) {
    _$v = other as _$EnabledAppsDto;
  }

  @override
  void update(void Function(EnabledAppsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnabledAppsDto build() => _build();

  _$EnabledAppsDto _build() {
    _$EnabledAppsDto _$result;
    try {
      _$result = _$v ??
          _$EnabledAppsDto._(
            apps: _apps?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'apps';
        _apps?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EnabledAppsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
