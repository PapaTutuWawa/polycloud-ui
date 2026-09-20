import 'package:polycloud/repositories/core_repository.dart';
import 'package:polycloud/state/auth_check_state.dart';
import 'package:polycloud/viewmodels/auth_check_viewmodel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'frame_viewmodel.g.dart';

@riverpod
class FrameViewModel extends _$FrameViewModel {
  @override
  Future<List<String>> build() async {
    final coreRepo = ref.read(coreRepositoryProvider);
    final authState = ref.read(authCheckProvider);
    if (authState is! Authenticated) {
      throw Exception('Frame shown but user not authenticated');
    }

    final apps = await coreRepo.fetchApps(authState.authToken);
    return apps
        .map((el) => el.id!)
        .toList();
  }
}