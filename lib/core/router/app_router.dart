// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../modules/about_app/logic/cubit/about_app_cubit.dart';
import '../../modules/about_app/ui/page/about_app_page.dart';
import '../../modules/common_questions/ui/page/common_questions_page.dart';
import '../../modules/contact_us/ui/page/contact_us_page.dart';
import '../../modules/developer_team/ui/page/developer_team_page.dart';
import '../../modules/fingerprint_auth/logic/cubit/security_cubit.dart';
import '../../modules/fingerprint_auth/ui/page/fingerprint_auth_page.dart';
import '../../modules/forget_password/ui/page/forget_password_page.dart';
import '../../modules/get_started/logic/cubit/account_type/account_type_cubit.dart';
import '../../modules/get_started/logic/cubit/otp/otp_cubit.dart';
import '../../modules/get_started/logic/cubit/register/register_cubit.dart';
import '../../modules/get_started/ui/pages/get_started_page.dart';
import '../../modules/language/ui/page/change_language_page.dart';
import '../../modules/login/ui/pages/login_page.dart';
import '../../modules/main/ui/pages/main_page.dart';
import '../../modules/notifications/ui/notifications_page.dart';
import '../../modules/privacy_policy/ui/privacy_policy_page.dart';
import '../../modules/profile/ui/pages/profile_page.dart';
import '../../modules/request_money/ui/page/request_money_page.dart';
import '../../modules/scan_qrcode/ui/page/scan_qrcode_page.dart';
import '../../modules/security_alerts/ui/page/security_alerts_page.dart';
import '../../modules/send_money/ui/page/send_money_page.dart';
import '../../modules/terms_and_conditions/ui/page/terms_and_conditions_page.dart';
import '../../modules/theme/ui/page/theme.dart';
import '../../modules/two_factor_auth/ui/page/two_factor_auth.dart';
import '../../modules/welcome/ui/pages/welcome_page.dart';
import '../di/di.dart';
import 'cupertion_route_data.dart';
import 'routes_names.dart';

part 'app_router.g.dart';

final class AppRouter {
  static final router = GoRouter(
    initialLocation: RoutesNames.welcome,
    routes: $appRoutes,
  );
}

@TypedGoRoute<WelcomeRoute>(path: RoutesNames.welcome)
final class WelcomeRoute extends CupertinoRouteData with $WelcomeRoute {
  const WelcomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WelcomePage();
}

@TypedGoRoute<LoginRoute>(path: RoutesNames.login)
final class LoginRoute extends CupertinoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedGoRoute<GetStartedRoute>(path: RoutesNames.getStarted)
final class GetStartedRoute extends CupertinoRouteData with $GetStartedRoute {
  const GetStartedRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => getIt<RegisterCubit>()),
      BlocProvider(create: (context) => getIt<AccountTypeCubit>()),
      BlocProvider(create: (_) => getIt<OtpCubit>()),
    ],
    child: const GetStartedPage(),
  );
}

@TypedGoRoute<HomeRoute>(path: RoutesNames.home)
final class HomeRoute extends CupertinoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MainPage();
}

@TypedGoRoute<ProfileRoute>(path: RoutesNames.profile)
final class ProfileRoute extends CupertinoRouteData with $ProfileRoute {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}

@TypedGoRoute<ForgetPasswordRoute>(path: RoutesNames.forgetPassword)
final class ForgetPasswordRoute extends CupertinoRouteData
    with $ForgetPasswordRoute {
  const ForgetPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ForgetPasswordPage();
}

@TypedGoRoute<ChangePasswordRoute>(path: RoutesNames.changePassword)
final class ChangePasswordRoute extends CupertinoRouteData
    with $ChangePasswordRoute {
  const ChangePasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ForgetPasswordPage();
}

@TypedGoRoute<TwoFactorAuthRoute>(path: RoutesNames.twoFactorAuth)
final class TwoFactorAuthRoute extends CupertinoRouteData
    with $TwoFactorAuthRoute {
  const TwoFactorAuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TwoFactorAuth();
}

@TypedGoRoute<FingerprintAuthRoute>(path: RoutesNames.fingerprintAuth)
final class FingerprintAuthRoute extends CupertinoRouteData
    with $FingerprintAuthRoute {
  const FingerprintAuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (_) => getIt<SecurityCubit>(),
    child: const FingerprintAuthPage(),
  );
}

@TypedGoRoute<SecurityAlertsRoute>(path: RoutesNames.securityAlerts)
final class SecurityAlertsRoute extends CupertinoRouteData
    with $SecurityAlertsRoute {
  const SecurityAlertsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SecurityAlertsPage();
}

@TypedGoRoute<ChangeLanguageRoute>(path: RoutesNames.language)
final class ChangeLanguageRoute extends CupertinoRouteData
    with $ChangeLanguageRoute {
  const ChangeLanguageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ChangeLanguagePage();
}

@TypedGoRoute<ChangeThemeRoute>(path: RoutesNames.theme)
final class ChangeThemeRoute extends CupertinoRouteData with $ChangeThemeRoute {
  const ChangeThemeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ChangeThemePage();
}

@TypedGoRoute<NotificationsRoute>(path: RoutesNames.notifications)
final class NotificationsRoute extends CupertinoRouteData
    with $NotificationsRoute {
  const NotificationsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NotificationsPage();
}

@TypedGoRoute<CommonQuestionsRoute>(path: RoutesNames.commonQuestions)
final class CommonQuestionsRoute extends CupertinoRouteData
    with $CommonQuestionsRoute {
  const CommonQuestionsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CommonQuestionsPage();
}

@TypedGoRoute<PrivacyPolicyRoute>(path: RoutesNames.privacyPolicy)
final class PrivacyPolicyRoute extends CupertinoRouteData
    with $PrivacyPolicyRoute {
  const PrivacyPolicyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PrivacyPolicyPage();
}

@TypedGoRoute<ContactUsRoute>(path: RoutesNames.contactUs)
final class ContactUsRoute extends CupertinoRouteData with $ContactUsRoute {
  const ContactUsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ContactUsPage();
}

@TypedGoRoute<SendMoneyRoute>(path: RoutesNames.sendMoney)
final class SendMoneyRoute extends CupertinoRouteData with $SendMoneyRoute {
  const SendMoneyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SendMoneyPage();
}

@TypedGoRoute<RequestMoneyRoute>(path: RoutesNames.requestMoney)
final class RequestMoneyRoute extends CupertinoRouteData
    with $RequestMoneyRoute {
  const RequestMoneyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RequestMoneyPage();
}

@TypedGoRoute<ScanQrCodeRoute>(path: RoutesNames.scanQrCode)
final class ScanQrCodeRoute extends CupertinoRouteData with $ScanQrCodeRoute {
  const ScanQrCodeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ScanQrcodePage();
}

@TypedGoRoute<AboutAppRoute>(path: RoutesNames.appVersion)
final class AboutAppRoute extends CupertinoRouteData with $AboutAppRoute {
  const AboutAppRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => getIt<AboutAppCubit>()..getAppDetails(),
    child: const AboutAppPage(),
  );
}

@TypedGoRoute<DeveloperTeamRoute>(path: RoutesNames.developerTeam)
final class DeveloperTeamRoute extends CupertinoRouteData
    with $DeveloperTeamRoute {
  const DeveloperTeamRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DeveloperTeamPage();
}

@TypedGoRoute<TermsAndConditionsRoute>(path: RoutesNames.termsAndConditions)
final class TermsAndConditionsRoute extends CupertinoRouteData
    with $TermsAndConditionsRoute {
  const TermsAndConditionsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TermsAndConditionsPage();
}
