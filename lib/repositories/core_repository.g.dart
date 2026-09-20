// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(coreRepository)
final coreRepositoryProvider = CoreRepositoryProvider._();

final class CoreRepositoryProvider
    extends $FunctionalProvider<CoreRepository, CoreRepository, CoreRepository>
    with $Provider<CoreRepository> {
  CoreRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'coreRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$coreRepositoryHash();

  @$internal
  @override
  $ProviderElement<CoreRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CoreRepository create(Ref ref) {
    return coreRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CoreRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CoreRepository>(value),
    );
  }
}

String _$coreRepositoryHash() => r'e1b0e9d20cbfc26402d2507297fe47e9af9393a5';
