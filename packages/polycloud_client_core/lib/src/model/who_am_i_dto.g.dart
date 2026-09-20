// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_am_i_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WhoAmIDto extends WhoAmIDto {
  @override
  final String? username;
  @override
  final BuiltList<String>? roles;

  factory _$WhoAmIDto([void Function(WhoAmIDtoBuilder)? updates]) =>
      (WhoAmIDtoBuilder()..update(updates))._build();

  _$WhoAmIDto._({this.username, this.roles}) : super._();
  @override
  WhoAmIDto rebuild(void Function(WhoAmIDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WhoAmIDtoBuilder toBuilder() => WhoAmIDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WhoAmIDto &&
        username == other.username &&
        roles == other.roles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WhoAmIDto')
          ..add('username', username)
          ..add('roles', roles))
        .toString();
  }
}

class WhoAmIDtoBuilder implements Builder<WhoAmIDto, WhoAmIDtoBuilder> {
  _$WhoAmIDto? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  WhoAmIDtoBuilder() {
    WhoAmIDto._defaults(this);
  }

  WhoAmIDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _roles = $v.roles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WhoAmIDto other) {
    _$v = other as _$WhoAmIDto;
  }

  @override
  void update(void Function(WhoAmIDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WhoAmIDto build() => _build();

  _$WhoAmIDto _build() {
    _$WhoAmIDto _$result;
    try {
      _$result = _$v ??
          _$WhoAmIDto._(
            username: username,
            roles: _roles?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WhoAmIDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
