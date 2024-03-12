import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sample/utils/base_page.dart';
import 'package:responsive_sample/utils/constants.dart';

@RoutePage()
class LoginPage extends BasePage<LoginPageState> {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends BaseStatefulPage {

  LoginPageState();
  @override
  Widget buildView(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          Text("Auth Page"),
          ElevatedButton(onPressed: (){
            isLoggedIn = true;
            context.router.replaceNamed("/");
          }, child: Text("Login"))
        ],
      ),
    ));
  }
}
