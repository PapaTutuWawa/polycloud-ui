import 'package:copy_with_extension/copy_with_extension.dart';

part 'frame_state.g.dart';

@CopyWith()
class FrameState {
  /// List of supported app IDs.
  final List<String> apps;

  const FrameState(this.apps);
}
