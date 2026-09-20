// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oidc_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(oidcRepository)
final oidcRepositoryProvider = OidcRepositoryProvider._();

final class OidcRepositoryProvider
    extends $FunctionalProvider<OidcRepository, OidcRepository, OidcRepository>
    with $Provider<OidcRepository> {
  OidcRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'oidcRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$oidcRepositoryHash();

  @$internal
  @override
  $ProviderElement<OidcRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OidcRepository create(Ref ref) {
    return oidcRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OidcRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OidcRepository>(value),
    );
  }
}

String _$oidcRepositoryHash() => r'65da51fa74ced69dd089605345a620592e4a2227';
