// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_mechanism_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthMechanismDto extends AuthMechanismDto {
  @override
  final String? id;
  @override
  final String? displayName;
  @override
  final BuiltMap<String, String>? data;

  factory _$AuthMechanismDto(
          [void Function(AuthMechanismDtoBuilder)? updates]) =>
      (AuthMechanismDtoBuilder()..update(updates))._build();

  _$AuthMechanismDto._({this.id, this.displayName, this.data}) : super._();
  @override
  AuthMechanismDto rebuild(void Function(AuthMechanismDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthMechanismDtoBuilder toBuilder() =>
      AuthMechanismDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthMechanismDto &&
        id == other.id &&
        displayName == other.displayName &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthMechanismDto')
          ..add('id', id)
          ..add('displayName', displayName)
          ..add('data', data))
        .toString();
  }
}

class AuthMechanismDtoBuilder
    implements Builder<AuthMechanismDto, AuthMechanismDtoBuilder> {
  _$AuthMechanismDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  MapBuilder<String, String>? _data;
  MapBuilder<String, String> get data =>
      _$this._data ??= MapBuilder<String, String>();
  set data(MapBuilder<String, String>? data) => _$this._data = data;

  AuthMechanismDtoBuilder() {
    AuthMechanismDto._defaults(this);
  }

  AuthMechanismDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayName = $v.displayName;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthMechanismDto other) {
    _$v = other as _$AuthMechanismDto;
  }

  @override
  void update(void Function(AuthMechanismDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthMechanismDto build() => _build();

  _$AuthMechanismDto _build() {
    _$AuthMechanismDto _$result;
    try {
      _$result = _$v ??
          _$AuthMechanismDto._(
            id: id,
            displayName: displayName,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AuthMechanismDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
