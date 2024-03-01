import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_sample/pages/home_page.dart';

final GoRouter router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) {
        return const HomePage();
      })
]);

