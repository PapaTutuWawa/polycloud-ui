import 'package:polycloud/repositories/core_repository.dart';
import 'package:polycloud/state/auth_check_state.dart';
import 'package:polycloud/state/frame_state.dart';
import 'package:polycloud/viewmodels/auth_check_viewmodel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants.dart';

part 'frame_viewmodel.g.dart';

@riverpod
class FrameViewModel extends _$FrameViewModel {
  @override
  Future<FrameState> build() async {
    final coreRepo = ref.read(coreRepositoryProvider);
    final authState = ref.read(authCheckProvider);
    if (authState is! Authenticated) {
      throw Exception('Frame shown but user not authenticated');
    }

    final apps = await coreRepo.fetchApps(authState.authToken);
    return FrameState(apps.map((el) => el.id!).toList(), null);
  }

  /// Guesses the active app from the path.
  void setActiveAppFromPath(String path) {
    String? activePluginId;
    if (path.startsWith("/calendar")) {
      activePluginId = calendarPluginId;
    }

    setActiveApp(activePluginId);
  }

  /// Explicitly marks an app as active to show the indicator.
  void setActiveApp(String? pluginID) {
    // TODO: I think this breaks something.
    if (state.isLoading) return;

    state = AsyncValue.data(state.requireValue.copyWith(activeApp: pluginID));
  }
}
