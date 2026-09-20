import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:polycloud/repositories/core_repository.dart';
import 'package:polycloud/repositories/secure_storage_repository.dart';
import 'package:polycloud/routing/router.dart';
import 'package:polycloud/state/auth_check_state.dart';

/// View model for the auth check page.
class AuthCheckViewModel extends StateNotifier<AuthCheckState> {
  final SecureStorageRepository _secureRepo;

  final CoreRepository _coreRepo;

  final GoRouterNotifier _notifier;

  AuthCheckViewModel(this._coreRepo, this._secureRepo, this._notifier) : super(AuthCheckState.loading()) {
    debugPrint("Creating view model");
    _checkAuthState();
  }

  Future<void> _checkAuthState() async {
    debugPrint("CHecking auth state.");
    // Do we have tokens?
    final authToken = await _secureRepo.getAuthToken();
    final refreshToken = await _secureRepo.getRefreshToken();
    if (authToken == null || refreshToken == null) {
      debugPrint("Not authenticated since authToken or refreshToken are missing");
      state = AuthCheckState.unauthenticated();
      return;
    }

    // We have tokens. Are we actually authenticated though?
    try {
      await _coreRepo.fetchWhoAmI(authToken);
    } catch (ex) {
      debugPrint("Not authenticated since we could not fetch whoami");
      state = AuthCheckState.unauthenticated();
      return;
    }

    debugPrint("Authenticated!");
    state = AuthCheckState.authenticated(authToken, refreshToken);
  }

  Future<void> refresh() async {
    debugPrint('Called refresh');
    _checkAuthState();
  }
}

final authCheckProvider = StateNotifierProvider<AuthCheckViewModel, AuthCheckState>(
    (ref) => AuthCheckViewModel(
      ref.read(coreRepositoryProvider),
      ref.read(secureStorageRepositoryProvider.notifier),
      goRouterNotifier,
    ),
);