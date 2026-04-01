import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:payon/modules/welcome/presentation/pages/welcome_page.dart';
import 'package:payon/modules/login/presentation/pages/login_page.dart';
import 'package:payon/modules/get_started/presentation/pages/get_started_page.dart';

class AppRouter {
  static const String welcome = '/';
  static const String login = '/login';
  static const String getStarted = '/get-started';

  static final router = GoRouter(
    initialLocation: welcome,
    routes: [
      GoRoute(
        path: welcome,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: WelcomePage()),
      ),
      GoRoute(
        path: login,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: LoginPage()),
      ),
      GoRoute(
        path: getStarted,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: GetStartedPage()),
      ),
    ],
  );
}
