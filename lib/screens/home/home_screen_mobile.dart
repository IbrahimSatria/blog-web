// Contains the widgets that will be used for mobile layout of home
// portrait and landscape mobile orientation

import 'package:blog_web/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenMobilePortrait extends StatelessWidget {
  const HomeScreenMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 65.0,
        backgroundColor: Colors.black,
        centerTitle: true,
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.white,
        //   // size: 15.0,
        // ),
        title: Text(
          'TAKAHASHI RYÜJI',
          style: TextStyle(
            color: Colors.white,
            // fontSize: 20.0,
            letterSpacing: 2.0,
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: Container(
        //       child: Image.asset('assets/images/logo.png'),
        //     ),
        //   ),
        // ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(),
    );
  }
}

class HomeScreenMobileLandscape extends StatelessWidget {
  const HomeScreenMobileLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.white,
        // ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text(
                  'TAKAHASHI RYÜJI',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Growth occurs when one goes beyond one's limits",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
            // Image(image: image)
          ],
        ),
        actions: [],
      ),
      drawer: CustomDrawer(),
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
