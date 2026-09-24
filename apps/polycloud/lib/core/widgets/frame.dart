import 'package:flutter/material.dart';

const purpleFrameColor = Color.fromRGBO(106, 13, 173, 1.0);

/// Width of the sidebar when fully expanded.
const double _expandedSidebarWidth = 400;

class Frame extends StatelessWidget {
  /// Height of the header bar.
  final double headerHeight;

  /// Color of the actual frame.
  final Color frameColor;

  /// Background color
  final Color? backgroundColor;

  /// The child widget to show inside the frame.
  final Widget child;

  /// The header text widget.
  final Widget? header;

  /// The sidebar widget.
  final Widget? sidebar;

  const Frame({
    required this.child,
    this.header,
    this.sidebar,
    this.headerHeight = 80,
    this.backgroundColor,
    this.frameColor = purpleFrameColor,
    super.key,
  });

  /// Computes the background color of the main content.
  Color _backgroundColor(BuildContext context) {
    debugPrint(Theme.of(context).scaffoldBackgroundColor.toString());
    return backgroundColor ?? Theme.of(context).scaffoldBackgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: frameColor,
      child: Column(
        children: [
          LayoutBuilder(
            builder: (ctx, constraints) => SizedBox(
              width: constraints.maxWidth,
              height: headerHeight,
              child: ColoredBox(
                color: frameColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [?header],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LayoutBuilder(
                  builder: (ctx, constraints) => SizedBox(
                    height: constraints.maxHeight,
                    width: sidebar != null
                        ? _expandedSidebarWidth
                        : headerHeight,
                    child: ColoredBox(color: frameColor, child: sidebar),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(16),
                    ),
                    child: ColoredBox(
                      color: _backgroundColor(context),
                      child: child,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
