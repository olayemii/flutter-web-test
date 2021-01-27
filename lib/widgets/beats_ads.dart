import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/models/headphone.dart';
import 'package:product_web/utils/colors.dart';
import 'package:product_web/widgets/responsive_wrapper_widget.dart';

class BeatsAds extends StatefulWidget {
  @override
  _BeatsAdsState createState() => _BeatsAdsState();
}

class _BeatsAdsState extends State<BeatsAds>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: 100).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapperWidget(
      height: 400.0,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    transform: Matrix4.translationValues(0, animation.value, 0),
                    child: Image.asset(
                      "assets/images/beats.png",
                      width: 450.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Responsive noise\nblocking",
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Headphones are a necessity without a doubt. As the millennial culture says,house without our wallets but not without headphones!”Headphones are a necessity without a doubt. As the millennial culture says,",
                  style: TextStyle(
                    height: 1.8,
                    color: kTextDarkColor.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "\$199.99",
                        style: TextStyle(
                          color: kTextDarkColor.withOpacity(0.5),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      TextSpan(text: " " * 5),
                      TextSpan(
                        text: "\$179.99",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                FlatButton(
                  color: kDarkButtonColor,
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 25.0,
                  ),
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
