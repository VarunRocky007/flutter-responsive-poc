import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:local_session_timeout/local_session_timeout.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_sample/project/routes/app_route_config.dart';
import 'package:responsive_sample/project/routes/app_route_config.gr.dart';
import 'package:responsive_sample/utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    final sessionConfig = SessionConfig(
        invalidateSessionForUserInactivity: const Duration(seconds: 10));
    sessionConfig.stream.listen((SessionTimeoutState timeoutEvent) {
      isLoggedIn = false;
      if (timeoutEvent == SessionTimeoutState.userInactivityTimeout) {


        print("Go to login");
        globalNavigatorKey.currentContext!.router.replaceAll([const LoginRoute()]);
      }
    });
    return SessionTimeoutManager(
      userActivityDebounceDuration: const Duration(seconds: 1),
      sessionConfig: sessionConfig,
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          builder: (context, child) => ResponsiveBreakpoints.builder(
                child: child!,
                breakpoints: [
                  const Breakpoint(start: 0, end: 450, name: MOBILE),
                  const Breakpoint(start: 451, end: 800, name: TABLET),
                  const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                  const Breakpoint(
                      start: 1921, end: double.infinity, name: '4K'),
                ],
              )),
    );
  }
}
