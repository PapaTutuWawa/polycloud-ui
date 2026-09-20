import 'package:flutter/foundation.dart';
import 'package:polycloud_client_core/polycloud_client_core.dart';

@immutable
abstract class LoginState {
  const LoginState();

  const factory LoginState.loading() = _Loading;
  const factory LoginState.value(List<AuthMechanismDto> authMechanisms) = _Value;
  const factory LoginState.error(String message) = _Error;
}

class _Loading extends LoginState {
  const _Loading();
}

class _Value extends LoginState {
  final List<AuthMechanismDto> authMechanisms;
  const _Value(this.authMechanisms);
}

class _Error extends LoginState {
  final String message;
  const _Error(this.message);
}