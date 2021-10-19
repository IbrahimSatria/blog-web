import 'package:flutter/material.dart';

class HomeScreenTabletPortrait extends StatelessWidget {
  const HomeScreenTabletPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Tablet Portrait Homescreen',
        style: TextStyle(color: Colors.white, fontSize: 60),
      )),
    );
  }
}

class HomeScreenTabletLandscape extends StatelessWidget {
  const HomeScreenTabletLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Tablet Landscape Homescreen',
        style: TextStyle(color: Colors.white, fontSize: 60),
      )),
    );
  }
}
