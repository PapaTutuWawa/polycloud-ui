import 'package:flutter_riverpod/legacy.dart';
import 'package:polycloud/repositories/oidc_repository.dart';
import 'package:polycloud/repositories/secure_storage_repository.dart';
import 'package:polycloud/state/callback_state.dart';
import 'package:polycloud/viewmodels/auth_check_viewmodel.dart';

class OidcCallbackViewModel extends StateNotifier<CallbackState> {
  final SecureStorageRepository _secureRepo;

  final OidcRepository _oidcRepo;

  final AuthCheckViewModel _authCheckViewModel;

  OidcCallbackViewModel(
    this._secureRepo,
    this._oidcRepo,
    this._authCheckViewModel,
  ) : super(CallbackState.loading()) {
    _performTokenExchange();
  }

  Future<void> _performTokenExchange() async {
    final code = Uri.base.queryParameters["code"]!;
    final verifier = (await _secureRepo.getPKCEVerifier())!;
    final tokenResult = await _oidcRepo.performTokenExchange(code, verifier);
    await _secureRepo.setAuthToken(tokenResult.authToken);
    await _secureRepo.setRefreshToken(tokenResult.refreshToken);

    // Trigger a refresh in the auth state.
    await _authCheckViewModel.refresh();
  }
}

final oidcCallbackViewModelProvider =
    StateNotifierProvider<OidcCallbackViewModel, CallbackState>(
      (ref) => OidcCallbackViewModel(
        ref.read(secureStorageRepositoryProvider.notifier),
        ref.read(oidcRepositoryProvider),
        ref.read(authCheckProvider.notifier),
      ),
    );
