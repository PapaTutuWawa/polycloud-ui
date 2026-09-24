import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:polycloud/repositories/secure_storage_repository.dart';

/// View model for authentication related purposes.
// TODO: This should replace the auth_check_viewmodel.
class AuthViewModel extends StateNotifier<void> {
  /// Access to the secure storage.
  final SecureStorageRepository _secureRepo;

  AuthViewModel(this._secureRepo) : super(null);

  /// Writes the intended redirect URL to secure storage.
  Future<void> setIntendedUrl(String url) {
    debugPrint('Setting the intended redirect to $url');
    return _secureRepo.setIntendedUrl(url);
  }

  /// Gets the intended redirect URL from secure storage.
  Future<String?> getIntendedUrl() {
    return _secureRepo.getIntendedUrl();
  }
}

final authViewModelProvider = StateNotifierProvider<AuthViewModel, void>(
  (ref) => AuthViewModel(ref.read(secureStorageRepositoryProvider.notifier)),
);
