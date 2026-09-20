import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:polycloud/state/auth_check_state.dart';
import 'package:polycloud/viewmodels/auth_check_viewmodel.dart';
import 'package:polycloud/viewmodels/oidc_callback_viewmodel.dart';

/// Simple page that fetches the token from the IDP, exchanges it on the backend
/// and redirects to the root page.
class OidcCallbackPage extends ConsumerWidget {
  const OidcCallbackPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(oidcCallbackViewModelProvider);
    ref.listen(authCheckProvider, (prev, next) {
      debugPrint('OidcCallbackPage: State [$next]');
      if (next is Authenticated) {
        context.go('/');
      }
    });

    return Material(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Row(
            mainAxisAlignment: .center,
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsetsGeometry.all(16),
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
