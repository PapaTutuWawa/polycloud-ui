import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:polycloud/core/widgets/authenticated_frame.dart';
import 'package:polycloud/pages/splash.dart';
import 'package:polycloud/state/auth_check_state.dart';
import 'package:polycloud/viewmodels/active_app_viewmodel.dart';
import 'package:polycloud/viewmodels/auth_check_viewmodel.dart';
import 'package:polycloud/viewmodels/auth_viewmodel.dart';

import '../apps/calendar/calendar.dart';
import '../pages/oidc_callback.dart';
import '../pages/login_page.dart';

class GoRouterNotifier extends ChangeNotifier {
  GoRouterNotifier();

  void notify() {
    notifyListeners();
  }
}

final goRouterNotifier = GoRouterNotifier();

final routerProvider = Provider<GoRouter>((ref) {
  // Auth view model.
  final authViewModel = ref.read(authViewModelProvider.notifier);
  // Trigger authentication check.
  ref.read(authCheckProvider);

  return GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    refreshListenable: goRouterNotifier,
    redirect: (context, state) async {
      final auth = ref.read(authCheckProvider);
      final location = state.matchedLocation;
      final isPublic = location.startsWith('/public');
      final isAuthPage = location.startsWith('/login');

      if (isPublic) return null;

      if (auth is AuthCheckLoading) {
        if (isAuthPage || location == '/splash') return null;

        await authViewModel.setIntendedUrl(state.uri.toString());
        return '/splash';
      }

      if (auth is AuthCheckUnauthenticated) {
        if (isAuthPage) return null;
        if (location != '/splash') {
          await authViewModel.setIntendedUrl(state.uri.toString());
        }
        return '/login';
      }

      debugPrint('location: "$location", isAuthPage: $isAuthPage');
      if (location == '/splash' || isAuthPage) {
        final intendedUrl = await authViewModel.getIntendedUrl();
        ref
            .read(activeAppViewModelProvider.notifier)
            .setActiveAppFromPath(intendedUrl ?? '');
        return intendedUrl ?? '';
      }
      return null;
    },
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => SplashPage()),

      // Main dashboard
      GoRoute(
        path: '/',
        builder: (context, state) => AuthenticatedFrame(child: Text("lol")),
      ),

      // Main apps
      GoRoute(
        path: '/calendar',
        builder: (context, state) => CalendarApp(public: false),
      ),

      // Login-related pages
      GoRoute(path: '/login', builder: (context, state) => LoginPage()),
      GoRoute(
        path: '/login/oidc/callback',
        builder: (context, state) => OidcCallbackPage(),
      ),

      // Public apps are only really for web
      if (kIsWeb)
        GoRoute(
          path: '/public/calendar/:calenderId',
          builder: (context, state) => CalendarApp(
            public: true,
            initialCalendars: [state.pathParameters['calenderId']!],
          ),
        ),
    ],
  );
});
