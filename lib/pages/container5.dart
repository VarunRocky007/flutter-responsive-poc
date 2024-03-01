import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sample/utils/commonContainer.dart';
import 'package:responsive_sample/utils/constants.dart';
import 'package:responsive_sample/utils/device_detector_widget.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  _Container5State createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return DeviceDetectorWidget(
      phoneView: () => MobileContainer5(),
      webSiteView: () => DesktopContainer5(),
      tabletView: () => MobileContainer5(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer5() {
    return commonContainerMobile(
        'USE ANYTIME',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration3,
        false);
  }

  //============== DESKTOP =============

  Widget DesktopContainer5() {
    return commonContainer(
        'USE ANYTIME',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        illustration3,
        false);
  }
}
