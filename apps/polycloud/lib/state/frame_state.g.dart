// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frame_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FrameStateCWProxy {
  FrameState apps(List<String> apps);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FrameState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FrameState(...).copyWith(id: 12, name: "My name")
  /// ```
  FrameState call({List<String> apps});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfFrameState.copyWith(...)` or call `instanceOfFrameState.copyWith.fieldName(value)` for a single field.
class _$FrameStateCWProxyImpl implements _$FrameStateCWProxy {
  const _$FrameStateCWProxyImpl(this._value);

  final FrameState _value;

  @override
  FrameState apps(List<String> apps) => call(apps: apps);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FrameState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FrameState(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  FrameState call({Object? apps = const $CopyWithPlaceholder()}) {
    return FrameState(
      apps == const $CopyWithPlaceholder() || apps == null
          ? _value.apps
          // ignore: cast_nullable_to_non_nullable
          : apps as List<String>,
    );
  }
}

extension $FrameStateCopyWith on FrameState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfFrameState.copyWith(...)` or `instanceOfFrameState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FrameStateCWProxy get copyWith => _$FrameStateCWProxyImpl(this);
}
