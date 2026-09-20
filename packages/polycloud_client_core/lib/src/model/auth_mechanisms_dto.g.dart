// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_mechanisms_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthMechanismsDto extends AuthMechanismsDto {
  @override
  final BuiltList<AuthMechanismDto>? mechanisms;

  factory _$AuthMechanismsDto(
          [void Function(AuthMechanismsDtoBuilder)? updates]) =>
      (AuthMechanismsDtoBuilder()..update(updates))._build();

  _$AuthMechanismsDto._({this.mechanisms}) : super._();
  @override
  AuthMechanismsDto rebuild(void Function(AuthMechanismsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthMechanismsDtoBuilder toBuilder() =>
      AuthMechanismsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthMechanismsDto && mechanisms == other.mechanisms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mechanisms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthMechanismsDto')
          ..add('mechanisms', mechanisms))
        .toString();
  }
}

class AuthMechanismsDtoBuilder
    implements Builder<AuthMechanismsDto, AuthMechanismsDtoBuilder> {
  _$AuthMechanismsDto? _$v;

  ListBuilder<AuthMechanismDto>? _mechanisms;
  ListBuilder<AuthMechanismDto> get mechanisms =>
      _$this._mechanisms ??= ListBuilder<AuthMechanismDto>();
  set mechanisms(ListBuilder<AuthMechanismDto>? mechanisms) =>
      _$this._mechanisms = mechanisms;

  AuthMechanismsDtoBuilder() {
    AuthMechanismsDto._defaults(this);
  }

  AuthMechanismsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mechanisms = $v.mechanisms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthMechanismsDto other) {
    _$v = other as _$AuthMechanismsDto;
  }

  @override
  void update(void Function(AuthMechanismsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthMechanismsDto build() => _build();

  _$AuthMechanismsDto _build() {
    _$AuthMechanismsDto _$result;
    try {
      _$result = _$v ??
          _$AuthMechanismsDto._(
            mechanisms: _mechanisms?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mechanisms';
        _mechanisms?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AuthMechanismsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
