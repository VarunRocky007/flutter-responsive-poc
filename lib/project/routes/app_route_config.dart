import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sample/pages/home_page.dart';
import 'package:responsive_sample/project/routes/app_route_guards.dart';

import 'app_route_config.gr.dart';

final globalNavigatorKey = GlobalKey<NavigatorState>();

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  GlobalKey<NavigatorState> get navigatorKey => globalNavigatorKey;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path:'/',
          page: HomeRoute.page,
          guards: [CheckIfUserLoggedIn()],
          initial: true,
        ),
        AutoRoute(
          path:'/login',
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: '/third',
          page: ThirdRoute.page,
          guards: [CheckIfUserLoggedIn()],
        ),
        AutoRoute(
          path:'/fourth',
          page: FourthRoute.page,
          guards: [CheckIfUserLoggedIn()],
        )
      ];
}
