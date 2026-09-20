import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:polycloud/core/widgets/frame.dart';
import 'package:polycloud/state/auth_check_state.dart';
import 'package:polycloud/viewmodels/auth_check_viewmodel.dart';

/// Loading splash page.
class LoadingSplashPage extends ConsumerWidget {
  const LoadingSplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authCheckProvider, (prev, curr) {
      debugPrint('LoadingSplashPage: state [$curr]');
      if (curr is Authenticated) {
        context.go('/');
      } else if (curr is Unauthenticated) {
        context.go('/login');
      }
    });

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
