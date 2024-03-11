import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sample/project/routes/app_route_config.dart';
import 'package:responsive_sample/project/routes/app_route_config.gr.dart';
import 'package:responsive_sample/utils/colors.dart';
import 'package:responsive_sample/utils/device_detector_widget.dart';
import 'package:responsive_sample/utils/styles.dart';

import 'constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return DeviceDetectorWidget(
      phoneView: () => MobileNavBar(),
      webSiteView: () => DeskTopNavBar(),
      tabletView: () => MobileNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: const Icon(Icons.menu),
          onTap: () {
            globalNavigatorKey.currentContext!.router.pushNamed("/third");
          },
        ),
        navLogo()
      ],
    ),
  );
}

Widget DeskTopNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton('Features'),
            navButton('About Us'),
            navButton('Pricing'),
            navButton('Feedback')
          ],
        ),
        SizedBox(
          height: 45,
          child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(color: AppColors.primary),
              )),
        )
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {
            globalNavigatorKey.currentContext!.router.pushNamed("/third");
          },
          child:
              Text(text, style: TextStyle(color: Colors.black, fontSize: 18))));
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain)),
  );
}
