import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_sample/utils/base_page.dart';

@RoutePage()
class FourthPage extends BasePage<FourthPageState> {
  const FourthPage({super.key});

  @override
  FourthPageState createState() => FourthPageState();
}

class FourthPageState extends BaseStatefulPage {
  @override
  Widget buildView(BuildContext context) {
    return const SingleChildScrollView(
        child: Center(
          child: Text("Fourth Page"),
        ));
  }
}