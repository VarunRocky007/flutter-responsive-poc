import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sample/utils/commonContainer.dart';
import 'package:responsive_sample/utils/constants.dart';
import 'package:responsive_sample/utils/device_detector_widget.dart';


class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  _Container3State createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return DeviceDetectorWidget(
      phoneView: () => MobileContainer3(),
      webSiteView: () => DesktopContainer3(),
      tabletView: () => MobileContainer3(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer3() {
    return commonContainerMobile(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration1,
        false);
  }

  //============== DESKTOP =============

  Widget DesktopContainer3() {
    return commonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        illustration1,
        false);
  }
}
