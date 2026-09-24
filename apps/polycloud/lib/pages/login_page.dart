import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/constants.dart';
import 'package:polycloud/core/widgets/login/login_card.dart';
import 'package:polycloud/viewmodels/login_viewmodel.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  /// Render a widget via [builder], when the server supports [plugin] as a login
  /// method.
  Widget _renderWhenSupported(
    Widget Function() builder,
    WidgetRef ref,
    String plugin,
  ) {
    final loginViewModel = ref.read(loginViewModelProvider.notifier);
    final loginState = ref.watch(loginViewModelProvider);
    return loginState.when(
      data: (state) {
        if (loginViewModel.supportsPlugin(plugin)) {
          return builder();
        }

        return Container();
      },
      error: (_, _) => Container(),
      loading: () => Container(),
    );
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
                  constraints: BoxConstraints(maxWidth: 400, minHeight: 600),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(24),
                      child: Column(
                        mainAxisSize: .min,
                        crossAxisAlignment: .center,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: SizedBox(
                              width: 64,
                              height: 64,
                              child: Icon(Icons.cloud),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsetsGeometry.only(
                              top: 32,
                              bottom: 8,
                            ),
                            child: Text(
                              'Sign in to PolyCloud',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsetsGeometry.only(bottom: 32),
                            child: Text(
                              'Choose how you want to log in',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),

                          loginState.when(
                            data: (_) => Container(),
                            error: (_, _) =>
                                Text("Failed to load login methods"),
                            loading: () => Center(
                              child: SizedBox(
                                width: 200,
                                height: 200,
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),

                          _renderWhenSupported(
                            () => LoginCard(
                              icon: Icon(Icons.key),
                              // TODO: Pull these from the API
                              title: 'polynom.me',
                              subtitle: 'Continue with your polynom.me account',
                              onPressed: () {
                                ref
                                    .read(loginViewModelProvider.notifier)
                                    .performOidcRedirect();
                              },
                            ),
                            ref,
                            oidcPluginId,
                          ),
                          _renderWhenSupported(
                            () => LoginCard(
                              icon: Icon(Icons.person),
                              title: 'Username & password',
                              subtitle: 'Use your PolyCloud account',
                              onPressed: () {},
                            ),
                            ref,
                            usernamePasswordPluginId,
                          ),
                        ],
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
