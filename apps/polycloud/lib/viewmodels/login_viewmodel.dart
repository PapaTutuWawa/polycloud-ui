import 'package:flutter/foundation.dart';
import 'package:polycloud/authentication/helpers.dart';
import 'package:polycloud/constants.dart';
import 'package:polycloud/repositories/core_repository.dart';
import 'package:polycloud/repositories/secure_storage_repository.dart';
import 'package:polycloud_client_core/polycloud_client_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uri/uri.dart';
import 'package:web/web.dart';

part 'login_viewmodel.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  FutureOr<List<AuthMechanismDto>> build() async {
    final repo = ref.watch(coreRepositoryProvider);
    return await repo.fetchAuthMechanisms();
  }

  /// Returns true when the server is advertising OIDC support.
  bool supportsPlugin(String pluginId) {
    return state.value?.map((el) => el.id).contains(pluginId) ?? false;
  }

  /// Computes the OIDC URL to redirect the user to, based on the
  /// mechanism [mechanism].
  /// Returns a record containing the verifier and the URL to redirect to.
  (String, String) computeOidcUrl(AuthMechanismDto mechanism) {
    final (verifier, challenge) = generatePKCEVerifier();
    final baseUri = Uri.parse(mechanism.data!["url"]!);
    final builder = UriBuilder.fromUri(baseUri);

    debugPrint('Using [$challenge] as challenge');
    builder.queryParameters = {
      "client_id": mechanism.data!["client_id"]!,
      "response_type": mechanism.data!["response_type"]!,
      "scopes": mechanism.data!["scopes"]!,
      "redirect_uri": "http://localhost:7070/login/oidc/callback",
      // PKCE
      // TODO: PKCE is broken (at least with Authentik)
      //"code_challenge": challenge,
      //"code_challenge_method": "plain",
    };

    return (verifier, builder.build().toString());
  }

  /// Computes the URL for the OIDC authentication.
  Future<void> performOidcRedirect() async {
    // Compute the redirect URL, save the verifier token for later, and do the
    // redirect.
    final oidcLoginMethod = state.requireValue.firstWhere(
      (el) => el.id == oidcPluginId,
    );
    final secureRepo = ref.watch(secureStorageRepositoryProvider.notifier);
    final (verifier, url) = computeOidcUrl(oidcLoginMethod);
    await secureRepo.setPKCEVerifier(verifier);
    debugPrint('Saved verifier token to secure storage');
    debugPrint('Using [$verifier] as verifier');

    if (kIsWeb) {
      window.open(url, '_self');
    } else {
      throw Exception("Not implemented");
    }
  }
}
