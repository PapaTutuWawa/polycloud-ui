abstract class AuthCheckState {
  const AuthCheckState();

  const factory AuthCheckState.loading() = AuthCheckLoading;
  const factory AuthCheckState.authenticated(String authToken, String refreshToken) = Authenticated;
  const factory AuthCheckState.unauthenticated() = Unauthenticated;
}

class AuthCheckLoading extends AuthCheckState {
  const AuthCheckLoading();
}

class Authenticated extends AuthCheckState {
  final String authToken;

  final String refreshToken;

  const Authenticated(this.authToken, this.refreshToken);
}

class Unauthenticated extends AuthCheckState {
  const Unauthenticated();
}