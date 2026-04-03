// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../modules/get_started/presentation/pages/get_started_page.dart';
import '../../modules/login/presentation/pages/login_page.dart';
import '../../modules/main/presentation/pages/main_page.dart';
import '../../modules/profile/presentation/pages/profile_page.dart';
import '../../modules/welcome/presentation/pages/welcome_page.dart';

class AppRouter {
  static const String welcome = '/';
  static const String login = '/login';
  static const String getStarted = '/get-started';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String helpCenter = '/helpCenter';
  static const String theme = '/theme';
  static const String language = '/language';
  static const String aboutApp = '/aboutApp';
  static const String aboutUs = '/aboutUs';

  static const String notifications = '/notifications';
  static const String payments = '/payments';
  static const String sendMoney = '/send-money';
  static const String receiveMoney = '/receive-money';
  static const String forgetPassword = '/forget-password';
  static const String changePassword = '/change-password';

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
      GoRoute(
        path: home,
        pageBuilder: (context, state) => const CupertinoPage(child: MainPage()),
      ),
      GoRoute(
        path: profile,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: ProfilePage()),
      ),
    ],
  );
}
