// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthResult extends AuthResult {
  @override
  final Token? auth;
  @override
  final Token? refresh;

  factory _$AuthResult([void Function(AuthResultBuilder)? updates]) =>
      (AuthResultBuilder()..update(updates))._build();

  _$AuthResult._({this.auth, this.refresh}) : super._();
  @override
  AuthResult rebuild(void Function(AuthResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthResultBuilder toBuilder() => AuthResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthResult &&
        auth == other.auth &&
        refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthResult')
          ..add('auth', auth)
          ..add('refresh', refresh))
        .toString();
  }
}

class AuthResultBuilder implements Builder<AuthResult, AuthResultBuilder> {
  _$AuthResult? _$v;

  TokenBuilder? _auth;
  TokenBuilder get auth => _$this._auth ??= TokenBuilder();
  set auth(TokenBuilder? auth) => _$this._auth = auth;

  TokenBuilder? _refresh;
  TokenBuilder get refresh => _$this._refresh ??= TokenBuilder();
  set refresh(TokenBuilder? refresh) => _$this._refresh = refresh;

  AuthResultBuilder() {
    AuthResult._defaults(this);
  }

  AuthResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth?.toBuilder();
      _refresh = $v.refresh?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthResult other) {
    _$v = other as _$AuthResult;
  }

  @override
  void update(void Function(AuthResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthResult build() => _build();

  _$AuthResult _build() {
    _$AuthResult _$result;
    try {
      _$result = _$v ??
          _$AuthResult._(
            auth: _auth?.build(),
            refresh: _refresh?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'auth';
        _auth?.build();
        _$failedField = 'refresh';
        _refresh?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AuthResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
