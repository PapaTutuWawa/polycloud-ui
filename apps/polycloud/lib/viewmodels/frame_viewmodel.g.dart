// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frame_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FrameViewModel)
final frameViewModelProvider = FrameViewModelProvider._();

final class FrameViewModelProvider
    extends $AsyncNotifierProvider<FrameViewModel, List<String>> {
  FrameViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'frameViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$frameViewModelHash();

  @$internal
  @override
  FrameViewModel create() => FrameViewModel();
}

String _$frameViewModelHash() => r'fae7cee75e77f41613f6d4eae59bd6e1fee46e71';

abstract class _$FrameViewModel extends $AsyncNotifier<List<String>> {
  FutureOr<List<String>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
