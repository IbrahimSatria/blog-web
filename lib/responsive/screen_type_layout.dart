import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ScreenTypeLayout({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return tablet;
      }
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return desktop;
      }
      return mobile;
    });
  }
}
