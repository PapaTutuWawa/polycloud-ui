/// Base class representing the three authentication states.
abstract class AuthCheckState {
  const AuthCheckState();

  const factory AuthCheckState.loading() = AuthCheckLoading;
  const factory AuthCheckState.authenticated(
    String authToken,
    String refreshToken,
  ) = Authenticated;
  const factory AuthCheckState.unauthenticated() = AuthCheckUnauthenticated;
}

/// The authentication check is currently pending.
class AuthCheckLoading extends AuthCheckState {
  const AuthCheckLoading();
}

/// The user is currently authenticated.
class Authenticated extends AuthCheckState {
  /// The token to use for authentication.
  final String authToken;

  /// The token to use for refreshing the auth token.
  final String refreshToken;

  const Authenticated(this.authToken, this.refreshToken);
}

/// The user is unauthenticated.
class AuthCheckUnauthenticated extends AuthCheckState {
  const AuthCheckUnauthenticated();
}
