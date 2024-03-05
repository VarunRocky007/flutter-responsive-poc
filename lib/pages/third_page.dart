import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sample/utils/base_page.dart';

class ThirdPage extends BasePage<ThirdPageState> {
  const ThirdPage({super.key});

  @override
  ThirdPageState createState() => ThirdPageState();
}

class ThirdPageState extends BaseStatefulPage {
  @override
  Widget buildView(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text("Third Page"),
              ElevatedButton(onPressed: () {
                context.go("/fourth");
              }, child: const Text("Fourth")),
            ],
          ),
        ));
  }
}
