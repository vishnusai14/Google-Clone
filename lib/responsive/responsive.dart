import 'package:flutter/material.dart';
import 'package:google_clone/pages/home_page/home_page_mobile.dart';
import 'package:google_clone/pages/home_page/home_page_windows.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        debugPrint(constraints.maxWidth.toString());
        if (constraints.maxWidth > 700) {
          return const HomePageWindows();
        } else {
          return const HomePageMobile();
        }
      },
    );
  }
}
