import 'package:dio/dio.dart';
import 'package:polycloud_client_oidc/polycloud_client_oidc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'oidc_repository.g.dart';

/// DTO class containing initial token exchanage data.
class OidcLoginResult {
  /// The token to use for getting a new auth token..
  final String refreshToken;

  /// The current authentication token.
  final String authToken;

  const OidcLoginResult(this.authToken, this.refreshToken);
}

/// Repository for talking to the OIDC API of Polycloud.
class OidcRepository {
  /// Override for the basepath to use for the API.
  final String? _basePathOverride;

  OidcRepository({this._basePathOverride});

  /// The API client.
  late final _client = PolycloudClientOidc(
    //basePathOverride: _basePathOverride,
  );

  /// Perform a token exchange by exchanging [code] (OIDC access code)
  /// for an access token and then exchanging that one for a PolyCloud
  /// pair of refresh and auth token.
  ///
  /// For the OIDC token retrieval [verifier] is used for PKCE.
  Future<OidcLoginResult> performTokenExchange(String code, String verifier) async {
    // Fetch the token based on the code from the IDP.
    final oidcTokenResponse = await _client.dio.post(
      // TODO: We maybe don't even need this if other IDPs set CORS accordingly.
      //"$_basePathOverride/api/auth/oidc/proxy/token",
      'http://localhost:9090/api/auth/oidc/proxy/token',
      data: {
        "grant_type": "authorization_code",
        "code": code,
        // TODO: Get this URL from somewhere.
        "redirect_uri": "http://localhost:7070/login/oidc/callback",
        // TODO: Test PKCE against something that is not Authentik.
        //"code_verifier": verifier,
      },
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
      )
    );
    if (oidcTokenResponse.statusCode != 200) {
      throw Exception('Token retrieval failed: [${oidcTokenResponse.data}}');
    }

    // TODO: Maybe use a DTO class here as well?
    final oidcAccessToken = (oidcTokenResponse.data as Map<String, dynamic>)["access_token"]!;

    // Exchange it on the backend for a token pair.
    final polycloudTokenResponse = await _client
        .getOidcAuthPluginApi()
        .authenticate(authorization: 'Bearer $oidcAccessToken');
    if (polycloudTokenResponse.statusCode != 200) {
      throw Exception(
          'Token exchange failed: [${polycloudTokenResponse.data}}');
    }

    return OidcLoginResult(
      polycloudTokenResponse.data!.auth!.token!,
      polycloudTokenResponse.data!.refresh!.token!,
    );
  }
}

@riverpod
OidcRepository oidcRepository(Ref ref) {
  return OidcRepository();
}