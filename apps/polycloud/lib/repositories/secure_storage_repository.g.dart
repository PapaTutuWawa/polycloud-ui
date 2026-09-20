// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_storage_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SecureStorageRepository)
final secureStorageRepositoryProvider = SecureStorageRepositoryProvider._();

final class SecureStorageRepositoryProvider
    extends $AsyncNotifierProvider<SecureStorageRepository, void> {
  SecureStorageRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secureStorageRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secureStorageRepositoryHash();

  @$internal
  @override
  SecureStorageRepository create() => SecureStorageRepository();
}

String _$secureStorageRepositoryHash() =>
    r'5a26e197d0c29366160d6f8f9278a1c5ba793e01';

abstract class _$SecureStorageRepository extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
