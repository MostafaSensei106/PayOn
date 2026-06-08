// ignore_for_file: discarded_futures

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../modules/history/presentation/pages/history_page.dart';
import '../../../modules/home/logic/cubit/home_cubit.dart';
import '../../../modules/home/ui/pages/home_page.dart';
import '../../../modules/main/ui/pages/main_page.dart';
import '../../../modules/settings/ui/pages/settings_page.dart';
import '../../../modules/wallet/presentation/pages/wallet_page.dart';
import '../../di/di.dart';
import '../cupertion_route_data.dart';
import '../routes_names.dart';

part 'main_shell_routes.g.dart';

List<RouteBase> get mainShellRoutes => [$mainShellRouteData];

@TypedStatefulShellRoute<MainShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HomeRoute>(path: RoutesNames.home),
      ],
    ),
    TypedStatefulShellBranch<WalletBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<WalletRoute>(path: RoutesNames.wallet),
      ],
    ),
    TypedStatefulShellBranch<HistoryBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HistoryRoute>(path: RoutesNames.history),
      ],
    ),
    TypedStatefulShellBranch<SettingsBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SettingsRoute>(path: RoutesNames.settings),
      ],
    ),
  ],
)
class MainShellRouteData extends StatefulShellRouteData {
  const MainShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return MainPage(navigationShell: navigationShell);
  }
}

class HomeBranchData extends StatefulShellBranchData {
  const HomeBranchData();
}

class HomeRoute extends CupertinoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => MultiBlocProvider(
    providers: [BlocProvider(create: (_) => getIt<HomeCubit>()..getWallets())],
    child: const HomePage(),
  );
}

class WalletBranchData extends StatefulShellBranchData {
  const WalletBranchData();
}

class WalletRoute extends CupertinoRouteData with $WalletRoute {
  const WalletRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const WalletPage();
}

class HistoryBranchData extends StatefulShellBranchData {
  const HistoryBranchData();
}

class HistoryRoute extends CupertinoRouteData with $HistoryRoute {
  const HistoryRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const HistoryPage();
}

class SettingsBranchData extends StatefulShellBranchData {
  const SettingsBranchData();
}

class SettingsRoute extends CupertinoRouteData with $SettingsRoute {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}
