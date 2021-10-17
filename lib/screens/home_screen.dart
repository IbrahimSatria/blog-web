import 'dart:ui';

import 'package:blog_web/constants/constant.dart';
import 'package:blog_web/provider/theme_provider.dart';
import 'package:blog_web/widgets/change_theme_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   leading: Icon(
      //     Icons.menu,
      //     color: Colors.white,
      //   ),
      //   title: Row(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Column(
      //         children: [
      //           Text(
      //             'TAKAHASHI RYÜJI',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           Text(
      //             "Growth occurs when one goes beyond one's limits",
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 10.0,
      //             ),
      //           ),
      //         ],
      //       ),
      //       // Image(image: image)
      //     ],
      //   ),
      //   actions: [],
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: mediaQuery.size.height,
          child: Column(
            children: [
              Container(
                // padding: EdgeInsets.all(kDefaultPadding),
                color: Colors.black,
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                  minHeight: 70,
                  maxHeight: 90,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      // Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'TAKAHASHI RYÜJI',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              letterSpacing: 2.0,
                            ),
                          ),
                          Text(
                            "Growth occurs when one reach one's limit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                      // Spacer(),
                      Image.asset(
                        'assets/images/logo.png',
                        width: 55,
                        height: 55,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
