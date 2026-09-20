// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginViewModel)
final loginViewModelProvider = LoginViewModelProvider._();

final class LoginViewModelProvider
    extends $AsyncNotifierProvider<LoginViewModel, List<AuthMechanismDto>> {
  LoginViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginViewModelHash();

  @$internal
  @override
  LoginViewModel create() => LoginViewModel();
}

String _$loginViewModelHash() => r'fa51e6cd92494298bcca84735b1f2c9676a28043';

abstract class _$LoginViewModel extends $AsyncNotifier<List<AuthMechanismDto>> {
  FutureOr<List<AuthMechanismDto>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<AuthMechanismDto>>, List<AuthMechanismDto>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<AuthMechanismDto>>,
                List<AuthMechanismDto>
              >,
              AsyncValue<List<AuthMechanismDto>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
