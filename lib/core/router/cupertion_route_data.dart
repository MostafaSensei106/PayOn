import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class CupertinoRouteData extends GoRouteData {
  const CupertinoRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state);

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(key: state.pageKey, child: build(context, state));
  }
}
