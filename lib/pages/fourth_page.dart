import 'package:flutter/material.dart';
import 'package:responsive_sample/utils/base_page.dart';

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