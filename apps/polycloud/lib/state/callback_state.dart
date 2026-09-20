import 'package:flutter/foundation.dart';

@immutable
abstract class CallbackState {
  const CallbackState();

  const factory CallbackState.loading() = _Loading;
  const factory CallbackState.value() = _Value;
  const factory CallbackState.error() = _Error;
}

class _Loading extends CallbackState {
  const _Loading();
}

class _Value extends CallbackState {
  const _Value();
}

class _Error extends CallbackState {
  const _Error();
}
