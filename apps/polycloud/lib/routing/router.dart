import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:polycloud/core/widgets/authenticated_frame.dart';
import 'package:polycloud/pages/splash.dart';

import '../apps/calendar/calendar.dart';
import '../pages/auth_check.dart';
import '../pages/login_page.dart';

class GoRouterNotifier extends ChangeNotifier {
  GoRouterNotifier();

  void notify() {
    notifyListeners();
  }
}

final goRouterNotifier = GoRouterNotifier();

final routerProvider = Provider<GoRouter>((ref) => GoRouter(
  initialLocation: '/splash',
  debugLogDiagnostics: true,
  refreshListenable: goRouterNotifier,
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => LoadingSplashPage(),
    ),

    // Main dashboard
    GoRoute(
      path: '/',
      builder: (context, state) => AuthenticatedFrame(
          child: Text("lol")
      ),
    ),

    // Main apps
    GoRoute(
      path: '/calendar',
      builder: (context, state) => CalendarApp(
        public: false,
      ),
    ),

    // Login-related pages
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
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
          initialCalendar: state.pathParameters['calenderId'],
        ),
      ),
  ],
));