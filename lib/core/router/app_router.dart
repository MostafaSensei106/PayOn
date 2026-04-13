// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../modules/app_version/ui/page/app_version.dart';
import '../../modules/common_questions/ui/page/common_questions.dart';
import '../../modules/contact_us/ui/page/contact_us.dart';
import '../../modules/developer_team/ui/page/developer_team.dart';
import '../../modules/fingerprint_auth/ui/page/fingerprint_auth.dart';
import '../../modules/forget_password/ui/page/forget_password_page.dart';
import '../../modules/get_started/ui/pages/get_started_page.dart';
import '../../modules/language/ui/page/app_language.dart';
import '../../modules/login/presentation/pages/login_page.dart';
import '../../modules/main/presentation/pages/main_page.dart';
import '../../modules/notifications/ui/notifications.dart';
import '../../modules/privacy_policy/ui/privacy_policy.dart';
import '../../modules/profile/presentation/pages/profile_page.dart';
import '../../modules/security_alerts/ui/page/security_alerts.dart';
import '../../modules/send_money/ui/page/send_money.dart';
import '../../modules/theme/ui/page/theme.dart';
import '../../modules/two_factor_auth/ui/page/two_factor_auth.dart';
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
  static const String twoFactorAuth = '/two-factor-auth';
  static const String fingerprintAuth = '/fingerprint-auth';
  static const String securityAlerts = '/security-alerts';
  static const String commonQuestions = '/common-questions';
  static const String contactUs = '/contact-us';
  static const String privacyPolicy = '/privacy-policy';
  static const String appVersion = '/app-version';
  static const String developerTeam = '/developer-team';

  static final router = GoRouter(
    initialLocation: welcome,
    routes: [
      GoRoute(
        path: welcome,
        pageBuilder: (final context, final state) =>
            const CupertinoPage(child: WelcomePage()),
      ),
      GoRoute(
        path: login,
        pageBuilder: (final context, final state) =>
            const CupertinoPage(child: LoginPage()),
      ),
      GoRoute(
        path: getStarted,
        pageBuilder: (final context, final state) =>
            const CupertinoPage(child: GetStartedPage()),
      ),
      GoRoute(
        path: home,
        pageBuilder: (final context, final state) =>
            const CupertinoPage(child: MainPage()),
      ),
      GoRoute(
        path: profile,
        pageBuilder: (final context, final state) =>
            const CupertinoPage(child: ProfilePage()),
      ),
      GoRoute(
        path: forgetPassword,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: ForgetPasswordPage()),
      ),
      GoRoute(
        path: changePassword,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: ForgetPasswordPage()),
      ),
      GoRoute(
        path: twoFactorAuth,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: TwoFactorAuth()),
      ),
      GoRoute(
        path: fingerprintAuth,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: FingerprintAuth()),
      ),
      GoRoute(
        path: securityAlerts,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: SecurityAlerts()),
      ),
      GoRoute(
        path: language,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: AppLanguage()),
      ),
      GoRoute(
        path: theme,
        pageBuilder: (context, state) => const CupertinoPage(child: AppTheme()),
      ),
      GoRoute(
        path: notifications,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: Notifications()),
      ),
      GoRoute(
        path: commonQuestions,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: CommonQuestions()),
      ),
      GoRoute(
        path: privacyPolicy,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: PrivacyPolicy()),
      ),
      GoRoute(
        path: contactUs,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: ContactUs()),
      ),

      GoRoute(
        path: appVersion,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: AppVersion()),
      ),
      GoRoute(
        path: developerTeam,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: DeveloperTeam()),
      ),
      GoRoute(
        path: sendMoney,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: SendMoney()),
      ),
    ],
  );
}
