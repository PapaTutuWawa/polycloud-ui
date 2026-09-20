// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enabled_app_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnabledAppDto extends EnabledAppDto {
  @override
  final String? id;

  factory _$EnabledAppDto([void Function(EnabledAppDtoBuilder)? updates]) =>
      (EnabledAppDtoBuilder()..update(updates))._build();

  _$EnabledAppDto._({this.id}) : super._();
  @override
  EnabledAppDto rebuild(void Function(EnabledAppDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnabledAppDtoBuilder toBuilder() => EnabledAppDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnabledAppDto && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnabledAppDto')..add('id', id))
        .toString();
  }
}

class EnabledAppDtoBuilder
    implements Builder<EnabledAppDto, EnabledAppDtoBuilder> {
  _$EnabledAppDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  EnabledAppDtoBuilder() {
    EnabledAppDto._defaults(this);
  }

  EnabledAppDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnabledAppDto other) {
    _$v = other as _$EnabledAppDto;
  }

  @override
  void update(void Function(EnabledAppDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnabledAppDto build() => _build();

  _$EnabledAppDto _build() {
    final _$result = _$v ??
        _$EnabledAppDto._(
          id: id,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
