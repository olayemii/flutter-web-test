import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:product_web/utils/colors.dart';
import 'package:product_web/widgets/beats_ads.dart';
import 'package:product_web/widgets/contact_us.dart';
import 'package:product_web/widgets/features.dart';
import 'package:product_web/widgets/footer.dart';
import 'package:product_web/widgets/grey_ads.dart';
import 'package:product_web/widgets/header.dart';
import 'package:product_web/widgets/hero_section.dart';
import 'package:product_web/widgets/more_products.dart';
import 'package:product_web/widgets/product_slider.dart';
import 'package:product_web/widgets/responsive_wrapper_widget.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../widgets/beats_ads.dart';

class Home extends StatelessWidget {
  final ScrollController controller = ScrollController();
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    kDarkButtonColor,
  ];
  bool featuresActive = false;

  final List<Widget> uis = [
    // Container(
    //   child: Column(
    //     children: [],
    //   ),
    // ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ResponsiveWrapperWidget(
        child: Header(),
        height: 51.0,
      ),
    ),
    HeroSection(),
    ProductSlider(),
    Container(
      child: GreyAds(),
    ),
    SizedBox(),
    Container(
      child: MoreProducts(),
    ),
    Container(
      child: BeatsAds(),
    ),
    Container(
      child: ContactUs(),
    ),
    Container(
      child: Footer(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InViewNotifierList(
          isInViewPortCondition:
              (double deltaTop, double deltaBottom, double vpHeight) {
            return deltaTop < (0.5 * vpHeight) &&
                deltaBottom > (0.5 * vpHeight);
          },
          itemCount: uis.length,
          builder: (BuildContext context, int index) {
            return InViewNotifierWidget(
              id: '$index',
              builder: (BuildContext context, bool isInView, Widget child) {
                return Container(
                  // color: isInView ? Colors.green : Colors.red,
                  child: index == 4
                      ? Container(
                          child: Features(isActive: isInView),
                        )
                      : uis[index],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
