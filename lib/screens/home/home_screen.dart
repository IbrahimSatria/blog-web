import 'package:blog_web/responsive/orientation_layout.dart';
import 'package:blog_web/responsive/screen_type_layout.dart';
import 'package:blog_web/screens/home/home_screen_desktop.dart';
import 'package:blog_web/screens/home/home_screen_mobile.dart';
import 'package:blog_web/screens/home/home_screen_tablet.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeScreenMobilePortrait(),
        landscape: HomeScreenMobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: HomeScreenTabletPortrait(),
        landscape: HomeScreenTabletLandscape(),
      ),
      desktop: HomeScreenDesktop(),
    );
    //
  }
}
