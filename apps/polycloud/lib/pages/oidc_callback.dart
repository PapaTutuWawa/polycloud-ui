import 'package:polycloud/pages/splash.dart';
import 'package:polycloud/viewmodels/oidc_callback_viewmodel.dart';

/// Simple page that fetches the token from the IDP, exchanges it on the backend
/// and redirects to the root page.
class OidcCallbackPage extends SplashPage {
  OidcCallbackPage({super.key})
    : super(
        onBuild: (ref) {
          ref.read(oidcCallbackViewModelProvider);
        },
      );
}
