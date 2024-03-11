// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:responsive_sample/pages/fourth_page.dart' as _i1;
import 'package:responsive_sample/pages/home_page.dart' as _i2;
import 'package:responsive_sample/pages/login_page.dart' as _i3;
import 'package:responsive_sample/pages/third_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    FourthRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FourthPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    ThirdRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ThirdPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.FourthPage]
class FourthRoute extends _i5.PageRouteInfo<void> {
  const FourthRoute({List<_i5.PageRouteInfo>? children})
      : super(
          FourthRoute.name,
          initialChildren: children,
        );

  static const String name = 'FourthRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ThirdPage]
class ThirdRoute extends _i5.PageRouteInfo<void> {
  const ThirdRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ThirdRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThirdRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
