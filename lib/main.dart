import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_sample/project/routes/app_route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
        routerConfig: router,
        builder: (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
            ));
    // using the new ResponsiveScaledBox. The ResponsiveScaledBox widget preserves
    // the legacy ResponsiveWrapper behavior, scaling the UI instead of resizing.
    //n MaterialPageRoute(builder: (context) {
    //
    // **MaxWidthBox** - A widget that limits the maximum width.
    // This is used to create a gutter area on either side of the content.
    //
    // **ResponsiveScaledBox** - A widget that  renders its child
    // with a FittedBox set to the `width` value. Set the fixed width value
    // based on the active breakpoint.
    /*MaxWidthBox(
          maxWidth: 1200,
          background: Container(color: const Color(0xFFF5F5F5)),
          child: ResponsiveScaledBox(
            width: ResponsiveValue<double>(context, conditionalValues: [
              const Condition.equals(name: MOBILE, value: 450),
              const Condition.between(start: 800, end: 1100, value: 800),
              const Condition.between(start: 1000, end: 1200, value: 1000),
              // There are no conditions for width over 1200
              // because the `maxWidth` is set to 1200 via the MaxWidthBox.
            ]).value,
            child: Container(),
          ),
        ));
  }*/
  }
}
