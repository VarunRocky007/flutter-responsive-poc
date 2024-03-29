import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:local_session_timeout/local_session_timeout.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_sample/project/routes/app_route_config.dart';

abstract class BasePage<T extends BasePageState> extends StatefulWidget {
  const BasePage({super.key});

  @override
  T createState();
}

abstract class BasePageState extends State {}

abstract class BaseStatefulPage extends BasePageState {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get rootScaffoldKey => _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaledBox(
      width: ResponsiveValue<double>(context, conditionalValues: [
        const Condition.between(start: 0, end: 600, value: 450),
        const Condition.between(start: 601, end: 1000, value: 700),
        const Condition.between(start: 1001, end: 1920, value: 1360),
        const Condition.largerThan( breakpoint: 1921, value: 1921),
        // There are no conditions for width over 1200
        // because the `maxWidth` is set to 1200 via the MaxWidthBox.
      ]).value,
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: scaffoldBackgroundColor(),
          appBar: buildAppbar(),
          extendBodyBehindAppBar: extendBodyBehindAppBar(),
          body: _buildScaffoldBody(context),
          drawer: buildDrawer(),
          floatingActionButton: floatingActionButton(),
          drawerEnableOpenDragGesture: drawerEnableOpenDragGesture(),
          bottomNavigationBar: buildBottomNavigationBar(),
          bottomSheet: buildBottomSheet(),
        ),
      ),
    );
  }

  Widget? floatingActionButton() {
    return null;
  }

  /// Building a appbar of screen
  PreferredSizeWidget? buildAppbar() {
    return null;
  }

  /// Building a appbar of screen
  Color scaffoldBackgroundColor() {
    return Colors.white;
  }

  /// Building a drawer of screen
  Widget? buildDrawer() {
    return null;
  }

  /// Building a bottom-sheet
  Widget? buildBottomSheet() {
    return null;
  }

  /// Building a bottomNaviagtion Bar
  Widget? buildBottomNavigationBar() {
    return null;
  }

  bool extendBodyBehindAppBar() {
    return false;
  }

  Widget _buildScaffoldBody(BuildContext context) {
    return buildView(context);
  }

  @mustCallSuper
  Widget buildView(BuildContext context);

  bool drawerEnableOpenDragGesture() {
    return false;
  }
}
