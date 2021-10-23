import 'package:animations/animations.dart';
import 'package:blog_web/screens/menu/menu_screen.dart';
import 'package:flutter/material.dart';

class CustomMenuButtonWidget extends StatelessWidget {
  const CustomMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => OpenContainer(
        transitionDuration: Duration(seconds: 2),
        openBuilder: (context, _) => MenuScreen(),
        // closedShape: CircleBorder(),
        // closedColor: Colors.transparent,
        closedBuilder: (context, openContainer) => Container(
          // height: 70,
          // width: 70,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 40,
          ),
        ),
      );
}
