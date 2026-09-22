import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:polycloud/repositories/core_repository.dart';
import 'package:polycloud/repositories/secure_storage_repository.dart';
import 'package:polycloud/routing/router.dart';
import 'package:polycloud/state/auth_check_state.dart';

/// View model for the auth check page.
class AuthCheckViewModel extends StateNotifier<AuthCheckState> {
  final SecureStorageRepository _secureRepo;

  /// Core repository.
  final CoreRepository _coreRepo;

  /// Notifier to trigger router redirections.
  final GoRouterNotifier _notifier;

  AuthCheckViewModel(this._coreRepo, this._secureRepo, this._notifier)
    : super(AuthCheckState.loading()) {
    _checkAuthState();
  }

  void _setState(AuthCheckState state) {
    this.state = state;
    _notifier.notify();
  }

  Future<void> _checkAuthState() async {
    // Do we have tokens?
    final authToken = await _secureRepo.getAuthToken();
    final refreshToken = await _secureRepo.getRefreshToken();
    if (authToken == null || refreshToken == null) {
      debugPrint(
        "Not authenticated since authToken or refreshToken are missing",
      );
      _setState(AuthCheckState.unauthenticated());
      return;
    }

    // We have tokens. Are we actually authenticated though?
    try {
      await _coreRepo.fetchWhoAmI(authToken);
    } catch (ex) {
      debugPrint("Not authenticated since we could not fetch whoami");
      _setState(AuthCheckState.unauthenticated());
      return;
    }

    debugPrint("Authenticated!");
    _setState(AuthCheckState.authenticated(authToken, refreshToken));
  }

  Future<void> refresh() async {
    debugPrint('Called refresh');
    _checkAuthState();
  }
}

final authCheckProvider =
    StateNotifierProvider<AuthCheckViewModel, AuthCheckState>(
      (ref) => AuthCheckViewModel(
        ref.read(coreRepositoryProvider),
        ref.read(secureStorageRepositoryProvider.notifier),
        goRouterNotifier,
      ),
    );
