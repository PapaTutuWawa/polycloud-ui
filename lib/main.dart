import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:polycloud/apps/calendar/calendar.dart';
import 'package:polycloud/core/widgets/frame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: .dark,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        debugLogDiagnostics: true,
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => Frame(
              child: Text("lol")
            ),
          ),
          GoRoute(
            path: '/public/calendar/:calenderId',
            builder: (context, state) => CalendarApp(
              public: true,
              initialCalendar: state.pathParameters['calenderId'],
            ),
          ),
        ],
      ),
    );
  }
}
