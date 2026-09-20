// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenRefreshDto extends TokenRefreshDto {
  @override
  final Token? auth;
  @override
  final Token? refresh;

  factory _$TokenRefreshDto([void Function(TokenRefreshDtoBuilder)? updates]) =>
      (TokenRefreshDtoBuilder()..update(updates))._build();

  _$TokenRefreshDto._({this.auth, this.refresh}) : super._();
  @override
  TokenRefreshDto rebuild(void Function(TokenRefreshDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenRefreshDtoBuilder toBuilder() => TokenRefreshDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenRefreshDto &&
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
    return (newBuiltValueToStringHelper(r'TokenRefreshDto')
          ..add('auth', auth)
          ..add('refresh', refresh))
        .toString();
  }
}

class TokenRefreshDtoBuilder
    implements Builder<TokenRefreshDto, TokenRefreshDtoBuilder> {
  _$TokenRefreshDto? _$v;

  TokenBuilder? _auth;
  TokenBuilder get auth => _$this._auth ??= TokenBuilder();
  set auth(TokenBuilder? auth) => _$this._auth = auth;

  TokenBuilder? _refresh;
  TokenBuilder get refresh => _$this._refresh ??= TokenBuilder();
  set refresh(TokenBuilder? refresh) => _$this._refresh = refresh;

  TokenRefreshDtoBuilder() {
    TokenRefreshDto._defaults(this);
  }

  TokenRefreshDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth?.toBuilder();
      _refresh = $v.refresh?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenRefreshDto other) {
    _$v = other as _$TokenRefreshDto;
  }

  @override
  void update(void Function(TokenRefreshDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenRefreshDto build() => _build();

  _$TokenRefreshDto _build() {
    _$TokenRefreshDto _$result;
    try {
      _$result = _$v ??
          _$TokenRefreshDto._(
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
            r'TokenRefreshDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
