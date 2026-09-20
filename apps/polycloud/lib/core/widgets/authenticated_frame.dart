import 'package:flutter/cupertino.dart';
import 'package:polycloud/core/widgets/authenticated_frame_header.dart';
import 'package:polycloud/core/widgets/frame.dart';

/// Like Frame but showing the apps in the header.
class AuthenticatedFrame extends StatelessWidget {
  // The child to render.
  final Widget child;

  const AuthenticatedFrame({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Frame(
      header: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
        child: Row(
          children: [
            // TODO: Show a nice icon
            //Icon(Icons.flag),

            AuthenticatedFrameHeader(),
          ],
        ),
      ),
      child: child,
    );
  }
}