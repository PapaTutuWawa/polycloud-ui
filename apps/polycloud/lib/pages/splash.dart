import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/core/widgets/frame.dart';

/// A void callback that receives a ref as input.
typedef RefCallback = void Function(WidgetRef);

/// Loading splash page.
class SplashPage extends ConsumerWidget {
  /// Optional callback to call at the start of the build method.
  final RefCallback? onBuild;

  const SplashPage({super.key, this.onBuild});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onBuild?.call(ref);
    return Frame(
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Column(
            mainAxisAlignment: .center,
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
