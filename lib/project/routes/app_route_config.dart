import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_sample/pages/fourth_page.dart';
import 'package:responsive_sample/pages/home_page.dart';
import 'package:responsive_sample/pages/login_page.dart';
import 'package:responsive_sample/pages/third_page.dart';

import '../../utils/constants.dart';

final globalNavigatorKey = GlobalKey<NavigatorState>();

NavigatorState get navigator => globalNavigatorKey.currentState!;
final GoRouter router =
    GoRouter(initialLocation: '/', navigatorKey: globalNavigatorKey, routes: [
  GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) {
        return const HomePage();
      }, redirect: (ctx,state) async {
    if(isLoggedIn == false) {
      return "/login";
    }
    return state.path;
  },),
  GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) {
        return LoginPage();
      }),
      GoRoute(
          name: 'third',
          path: '/third',
          builder: (context, state) {
            return const ThirdPage();
          },redirect: (ctx,state) async {
        if(isLoggedIn == false) {
          return "/login";
        }
        return state.path;
      },),
      GoRoute(
          name: 'fourth',
          path: '/fourth',
          builder: (context, state) {
            return const FourthPage();
          },
      redirect: (ctx,state) async {
          if(isLoggedIn == false) {
            return "/login";
          }
          return state.path;
      },),
]);


