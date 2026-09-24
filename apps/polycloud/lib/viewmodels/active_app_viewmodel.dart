import 'package:flutter_riverpod/legacy.dart';

import '../constants.dart';

class ActiveAppViewModel extends StateNotifier<String?> {
  ActiveAppViewModel() : super(null);

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
    state = pluginID;
  }
}

final activeAppViewModelProvider =
    StateNotifierProvider<ActiveAppViewModel, String?>(
      (_) => ActiveAppViewModel(),
      isAutoDispose: false,
    );
