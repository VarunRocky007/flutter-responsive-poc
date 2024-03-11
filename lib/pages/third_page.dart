import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sample/project/routes/app_route_config.gr.dart';
import 'package:responsive_sample/utils/base_page.dart';

@RoutePage()
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
                context.router.pushNamed("/fourth");
              }, child: const Text("Fourth")),
            ],
          ),
        ));
  }
}
