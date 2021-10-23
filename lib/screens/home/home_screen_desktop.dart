import 'package:blog_web/widgets/custom_menu_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 80.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0.0,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                // vertical: 25.0,
              ),
              child: CustomMenuButtonWidget(),
            ),
          ),
        ],
      ),
      // endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/background-desktop.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  // height: double.maxFinite,
                ),
                Column(
                  children: [
                    GlowText(
                      'IM',
                      style: TextStyle(
                        fontFamily: 'RalewayThin',
                        fontSize: 70,
                        color: Colors.white,
                        letterSpacing: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    GlowText(
                      'TAKAHASHI RYÜJI',
                      style: TextStyle(
                        fontFamily: 'RalewayRegular',
                        fontSize: 70,
                        color: Colors.white,
                        letterSpacing: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 25),
                    GlowText(
                      'WEB & UI DESIGNER',
                      style: TextStyle(
                        fontFamily: 'DreamAvenue',
                        fontSize: 55,
                        color: Colors.white,
                        letterSpacing: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
