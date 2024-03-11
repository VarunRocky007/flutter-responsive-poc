import 'package:auto_route/auto_route.dart';
import 'package:responsive_sample/project/routes/app_route_config.gr.dart';

import '../../utils/constants.dart';

class CheckIfUserLoggedIn extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if(isLoggedIn == true) {
      resolver.next(true);
    }
    else {
      router.replaceAll([const LoginRoute()]);
    }
  }
}