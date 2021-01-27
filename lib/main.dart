import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_web/pages/home.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        platform: TargetPlatform.android,
        textTheme: GoogleFonts.interTextTheme(),
        scaffoldBackgroundColor: Colors.white,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        Navigator(
          pages: [
            MaterialPage(
              key: ValueKey("home"),
              child: Home(),
            )
          ],
          onPopPage: (route, result) => route.didPop(result),
        ),
        // maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
