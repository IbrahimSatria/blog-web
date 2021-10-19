import 'package:blog_web/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      // drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Card(
          child: Text('Desktop'),
        ),
      ),
    );
  }
}
