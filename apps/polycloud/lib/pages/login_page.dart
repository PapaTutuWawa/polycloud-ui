import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/viewmodels/login_viewmodel.dart';
import 'package:polycloud_client_core/polycloud_client_core.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  Widget _buildAuthButton(
    BuildContext context,
    AuthMechanismDto mechanism,
    LoginViewModel viewModel,
  ) {
    switch (mechanism.id) {
      case 'me.polynom.polycloud.apps.auth.oidc.OIDCAuthPlugin':
        return FilledButton(
          onPressed: () => viewModel.performOidcRedirect(mechanism),
          child: Text("Login using ${mechanism.displayName}"),
        );
    }

    return Container();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginViewModelProvider);

    return Material(
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(16),
                      child: loginState.when(
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (e, st) =>
                            Text("Failed to load auth mechanisms"),
                        data: (mechanisms) => ListView(
                          shrinkWrap: true,
                          children: mechanisms.map((mechanism) {
                            return _buildAuthButton(
                              context,
                              mechanism,
                              ref.read(loginViewModelProvider.notifier),
                            );
                          }).toList(),
                        ),
                      ),
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
