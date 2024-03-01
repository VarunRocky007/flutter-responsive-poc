import 'package:flutter/material.dart';
import 'package:responsive_sample/pages/container1.dart';
import 'package:responsive_sample/pages/container2.dart';
import 'package:responsive_sample/pages/container3.dart';
import 'package:responsive_sample/pages/container4.dart';
import 'package:responsive_sample/pages/container5.dart';
import 'package:responsive_sample/pages/home_page_mobile_view.dart';
import 'package:responsive_sample/pages/home_page_tab_view.dart';
import 'package:responsive_sample/pages/home_page_web_view.dart';
import 'package:responsive_sample/utils/base_page.dart';
import 'package:responsive_sample/utils/device_detector_widget.dart';
import 'package:responsive_sample/utils/navBar.dart';

class HomePage extends BasePage<HomePageState> {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends BaseStatefulPage {
  @override
  Widget buildView(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          NavBar(),
          SizedBox(
            height: 100,
          ),
          Container1(),
          Container2(),
          Container3(),
          Container4(),
          Container5()

          // MainContent()
        ],
      ),
    );
  }
}
