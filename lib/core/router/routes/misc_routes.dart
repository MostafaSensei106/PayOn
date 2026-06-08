import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../modules/about_app/logic/cubit/about_app_cubit.dart';
import '../../../modules/about_app/ui/page/about_app_page.dart';
import '../../../modules/common_questions/ui/page/common_questions_page.dart';
import '../../../modules/contact_us/ui/page/contact_us_page.dart';
import '../../../modules/developer_team/ui/page/developer_team_page.dart';
import '../../../modules/language/ui/page/change_language_page.dart';
import '../../../modules/notifications/ui/notifications_page.dart';
import '../../../modules/privacy_policy/ui/privacy_policy_page.dart';
import '../../../modules/profile/ui/pages/profile_page.dart';
import '../../../modules/request_money/ui/page/request_money_page.dart';
import '../../../modules/scan_qrcode/ui/page/scan_qrcode_page.dart';
import '../../../modules/send_money/ui/page/send_money_page.dart';
import '../../../modules/terms_and_conditions/ui/page/terms_and_conditions_page.dart';
import '../../../modules/theme/ui/page/theme.dart';
import '../../di/di.dart';
import '../cupertion_route_data.dart';
import '../routes_names.dart';

part 'misc_routes.g.dart';

List<RouteBase> get miscRoutes => [
      $profileRoute,
      $changeLanguageRoute,
      $changeThemeRoute,
      $notificationsRoute,
      $commonQuestionsRoute,
      $privacyPolicyRoute,
      $contactUsRoute,
      $sendMoneyRoute,
      $requestMoneyRoute,
      $scanQrCodeRoute,
      $aboutAppRoute,
      $developerTeamRoute,
      $termsAndConditionsRoute,
    ];

@TypedGoRoute<ProfileRoute>(path: RoutesNames.profile)
final class ProfileRoute extends CupertinoRouteData with $ProfileRoute {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ProfilePage();
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
