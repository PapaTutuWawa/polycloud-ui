import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:polycloud/constants.dart';
import 'package:polycloud/core/widgets/header_icon.dart';
import 'package:polycloud/viewmodels/active_app_viewmodel.dart';
import 'package:polycloud/viewmodels/frame_viewmodel.dart';

class HeaderAppButton extends ConsumerStatefulWidget {
  /// The name to show below the icon.
  final String name;

  /// The plugin ID of the app.
  final String pluginID;

  /// The icon to show.
  final Icon icon;

  /// The callback to use when the icon is tapped.
  final VoidCallback onTap;

  const HeaderAppButton({
    required this.name,
    required this.icon,
    required this.onTap,
    required this.pluginID,
    super.key,
  });

  @override
  ConsumerState<HeaderAppButton> createState() => _HeaderAppButtonState();
}

class _HeaderAppButtonState extends ConsumerState<HeaderAppButton> {
  /// Is the user currently hovering
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final activeAppID = ref.watch(activeAppViewModelProvider);

    final Widget bottomWidget;
    final Widget text = Text(widget.name, overflow: .ellipsis);
    if (_hovering) {
      bottomWidget = text;
    } else {
      if (activeAppID == widget.pluginID) {
        bottomWidget = SizedBox(
          height: 4,
          width: 24,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(2),
              color: Colors.white,
            ),
          ),
        );
      } else {
        bottomWidget = Container();
      }
    }

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      clipBehavior: .hardEdge,
      child: Material(
        color: Colors.transparent,
        child: SizedBox(
          width: 70,
          height: 70,
          child: InkWell(
            onTap: widget.onTap,
            onHover: (state) {
              setState(() {
                _hovering = state;
              });
            },
            child: Column(
              mainAxisSize: .min,
              mainAxisAlignment: .center,
              children: [
                SizedBox(width: 48, height: 48, child: widget.icon),

                bottomWidget,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AuthenticatedFrameHeader extends ConsumerWidget {
  const AuthenticatedFrameHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(frameViewModelProvider);
    return viewModel.when(
      loading: () => Row(children: [HeaderIcon(iconSize: 60)]),
      data: (data) => Row(
        spacing: 8,
        children: [
          HeaderIcon(iconSize: 60),

          if (data.apps.contains(filesPluginId))
            HeaderAppButton(
              name: 'Files',
              icon: Icon(Icons.folder),
              pluginID: filesPluginId,
              onTap: () {
                // TODO
                //ref.read(frameViewModelProvider.notifier).setActiveApp(filesPluginId);
                //context.go('/files');
              },
            ),

          if (data.apps.contains(calendarPluginId))
            HeaderAppButton(
              name: 'Calendar',
              icon: Icon(Icons.calendar_month_rounded),
              pluginID: calendarPluginId,
              onTap: () {
                ref
                    .read(activeAppViewModelProvider.notifier)
                    .setActiveApp(calendarPluginId);
                context.go('/calendar');
              },
            ),
        ],
      ),
      error: (e, tb) => Container(),
    );
  }
}
