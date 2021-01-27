import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/widgets/responsive_wrapper_widget.dart';

import '../utils/colors.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: double.infinity,
      color: kDarkButtonColor,
      child: ResponsiveWrapperWidget(
        height: 120.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/logo.png",
            ),
            Row(
              children: [
                Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
                Text(
                  "Feedback",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
                Text(
                  "Join Our Slack",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
                Text(
                  "Terms",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  child: Icon(
                    FlutterIcons.facebook_faw,
                    color: Colors.white.withOpacity(0.7),
                    size: 14.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  child: Icon(
                    FlutterIcons.instagram_ant,
                    color: Colors.white.withOpacity(0.7),
                    size: 14.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  child: Icon(
                    FlutterIcons.twitter_ant,
                    color: Colors.white.withOpacity(0.7),
                    size: 14.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
