import 'package:flutter/material.dart';

const purpleFrameColor = Color.fromRGBO(106, 13, 173, 1.0);

/// Width of the sidebar when fully expanded.
const double _expandedSidebarWidth = 400;

class Frame extends StatefulWidget {
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

  @override
  State<StatefulWidget> createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  /// Flag deciding whether to show the sidebar or not.
  /// TODO: This should also be controlled by the display width.
  bool _showSidebar = true;

  /// Computes the background color of the main content.
  Color _backgroundColor(BuildContext context) {
    debugPrint(Theme.of(context).scaffoldBackgroundColor.toString());
    return widget.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor;
  }

  @override
  void initState() {
    super.initState();

    if (widget.sidebar == null) {
      _showSidebar = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.frameColor,
      child: Column(
        children: [
          LayoutBuilder(
            builder: (ctx, constraints) => SizedBox(
              width: constraints.maxWidth,
              height: widget.headerHeight,
              child: ColoredBox(
                color: widget.frameColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [?widget.header],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnimatedSize(
                  duration: MediaQuery.of(context).disableAnimations
                      ? Duration.zero
                      : const Duration(milliseconds: 200),
                  child: LayoutBuilder(
                    builder: (ctx, constraints) => SizedBox(
                      height: constraints.maxHeight,
                      width: _showSidebar
                          ? _expandedSidebarWidth
                          : widget.headerHeight,
                      child: ColoredBox(
                        color: widget.frameColor,
                        child: Column(
                          crossAxisAlignment: .stretch,
                          mainAxisSize: .max,
                          children: [
                            if (widget.sidebar != null)
                              Align(
                                alignment: .centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.menu_open_outlined,
                                      size: 60,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _showSidebar = !_showSidebar;
                                      });
                                    },
                                  ),
                                ),
                              ),

                            if (_showSidebar) Expanded(child: widget.sidebar!),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(16),
                    ),
                    child: ColoredBox(
                      color: _backgroundColor(context),
                      child: widget.child,
                    )
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
