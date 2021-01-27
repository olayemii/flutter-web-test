import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/widgets/input_widget.dart';
import 'package:product_web/widgets/responsive_wrapper_widget.dart';

import '../utils/colors.dart';
import '../utils/colors.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: ResponsiveWrapperWidget(
                    height: 300.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                        ),
                        Text(
                          "Say Hello to Us",
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300.0,
                              child: InputWidget(
                                prefixIcon: FlutterIcons.user_ent,
                                hintText: "Enter your name",
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              width: 300.0,
                              child: InputWidget(
                                prefixIcon: FlutterIcons.mail_ant,
                                hintText: "Enter your email address",
                              ),
                            ),
                            Container(
                              height: 48.0,
                              child: FlatButton(
                                onPressed: () {},
                                color: kDarkButtonColor,
                                child: Text(
                                  "Send",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                            // InputWidget(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -30.0,
          left: -150.0,
          child: Image.asset(
            "assets/images/headset_left.png",
          ),
        ),
        Positioned(
          top: 40.0,
          width: 250.0,
          right: -90.0,
          child: Image.asset(
            "assets/images/headset_right.png",
          ),
        ),
      ],
    );
  }
}
