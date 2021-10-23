import 'package:blog_web/responsive/orientation_layout.dart';
import 'package:blog_web/responsive/screen_type_layout.dart';
import 'package:blog_web/screens/menu/menu_screen_desktop.dart';
import 'package:blog_web/screens/menu/menu_screen_mobile.dart';
import 'package:flutter/material.dart';

import 'menu_screen_tablet.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: MenuScreenMobilePortrait(),
        landscape: MenuScreenMobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: MenuScreenTabletPortrait(),
        landscape: MenuScreenTabletLandscape(),
      ),
      desktop: MenuScreenDesktop(),
    );
  }
}
