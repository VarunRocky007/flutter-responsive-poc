import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:local_session_timeout/local_session_timeout.dart';
import 'package:responsive_sample/utils/base_page.dart';
import 'package:responsive_sample/utils/constants.dart';

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
            context.go("/");
          }, child: Text("Login"))
        ],
      ),
    ));
  }
}
