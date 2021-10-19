import 'package:blog_web/screens/blog/blog_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Row(
          //   children: [
          //     Container(
          //       child: Image.asset(''),
          //     ),
          //   ],
          // ),
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/blacklogo.webp',
                  width: 80,
                  height: 80,
                ),
                SizedBox(width: 10),
                Text(
                  'Ryuuji',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
          ),
          buildMenuItem(icon: Icons.home, text: 'Home'),
          buildMenuItem(icon: Icons.people, text: 'About'),
          buildMenuItem(icon: Icons.people, text: 'Quote'),
          buildMenuItem(icon: Icons.people, text: 'Contact'),
          buildMenuItem(icon: Icons.people, text: 'Blog'),
        ],
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
