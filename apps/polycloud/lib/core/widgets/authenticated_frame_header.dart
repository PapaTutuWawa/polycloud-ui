import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:polycloud/core/widgets/header_icon.dart';
import 'package:polycloud/viewmodels/frame_viewmodel.dart';

class AuthenticatedFrameHeader extends ConsumerWidget {
  const AuthenticatedFrameHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(frameViewModelProvider);
    return viewModel.when(
      loading: () => Row(
        children: [
          HeaderIcon(iconSize: 60),
        ],
      ),
      data: (data) => Row(
        children: [
          HeaderIcon(iconSize: 60),

          if (data.contains('me.polynom.polycloud.apps.files.FilesPlugin'))
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.insert_drive_file_rounded,
                size: 60,
              ),
              tooltip: 'Files',
            ),

          if (data.contains('me.polynom.polycloud.apps.calendar.CalendarPlugin'))
            IconButton(
              onPressed: () {
                context.go('/calendar');
              },
              icon: Icon(
                Icons.calendar_month_rounded,
                size: 60,
              ),
              tooltip: 'Calendar',
            ),
        ],
      ),
      error: (e, tb) => Container(),
    );
  }
}