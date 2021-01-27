import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ResponsiveWrapperWidget extends StatelessWidget {
  final Widget child;
  final double height;
  ResponsiveWrapperWidget({this.child, this.height = 640.0});
  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper(
      maxWidth: 1200,
      minWidth: 1200,
      defaultScale: true,
      mediaQueryData: MediaQueryData(size: Size(1200, height)),
      child: RepaintBoundary(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: child,
        ),
      ),
    );
  }
}
