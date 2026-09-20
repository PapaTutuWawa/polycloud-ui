import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_repository.g.dart';

/// Key in the secure storage for the PKCE verifier.
const _pkceVerifierKey = 'auth.pkce-verifier';

/// Key in the secure storage for the IDP url.
const _idpTokenUrl = 'auth.token-url';

/// Key in the secure storage holding the polycloud auth token
const _polycloudAuthTokenKey = 'auth.polycloud';

/// Key in the secure storage holding the polycloud refresh token
const _polycloudRefreshTokenKey = 'refresh.polycloud';

@riverpod
class SecureStorageRepository extends _$SecureStorageRepository {
  final _storage = FlutterSecureStorage();

  @override
  FutureOr<void> build() async {}

  Future<String?> _getAndClear(String key) async {
    final value = await _storage.read(key: key);
    await _storage.delete(key: key);
    return value;
  }

  /// Reads the PKCE verifier code from the secure storage.
  Future<String?> getPKCEVerifier() {
    return _getAndClear(_pkceVerifierKey);
  }

  /// Writes the PKCE verifier code [verifier] to the secure storage.
  Future<void> setPKCEVerifier(String verifier) {
    return _storage.write(key: _pkceVerifierKey, value: verifier);
  }

  /// Reads the IDP URL from the secure storage.
  Future<String?> getTokenUrl() {
    return _getAndClear(_idpTokenUrl);
  }

  /// Writes the IDP token URL [url] to the secure storage.
  Future<void> setTokenUrl(String url) {
    return _storage.write(key: _idpTokenUrl, value: url);
  }

  /// Reads the Polycloud auth token from the secure storage.
  Future<String?> getAuthToken() {
    return _storage.read(key: _polycloudAuthTokenKey);
  }

  /// Writes the Polycloud auth token to the secure storage.
  Future<void> setAuthToken(String token) {
    return _storage.write(key: _polycloudAuthTokenKey, value: token);
  }

  /// Reads the Polycloud refresh token from the secure storage.
  Future<String?> getRefreshToken() {
    return _storage.read(key: _polycloudRefreshTokenKey);
  }

  /// Writes the Polycloud refresh token to the secure storage.
  Future<void> setRefreshToken(String token) {
    return _storage.write(key: _polycloudRefreshTokenKey, value: token);
  }
}
