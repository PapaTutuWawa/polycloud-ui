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
    extends $AsyncNotifierProvider<FrameViewModel, FrameState> {
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

String _$frameViewModelHash() => r'2d5056982c50c4999640632bafd411fda6a15ba5';

abstract class _$FrameViewModel extends $AsyncNotifier<FrameState> {
  FutureOr<FrameState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<FrameState>, FrameState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FrameState>, FrameState>,
              AsyncValue<FrameState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
