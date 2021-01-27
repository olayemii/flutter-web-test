import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/models/headphone.dart';
import 'package:product_web/utils/colors.dart';

import 'responsive_wrapper_widget.dart';

class ProductSlider extends StatefulWidget {
  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  CarouselController controller;
  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  final List<Headphone> headphones = [
    Headphone(
      color: "Red",
      image: "assets/images/headset2.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Black",
      image: "assets/images/headset3.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Silver",
      image: "assets/images/headset4.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Blue",
      image: "assets/images/headset5.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Yellow",
      image: "assets/images/headset6.png",
      price: "\$249.99",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapperWidget(
      height: 300.0,
      child: Container(
        height: 160.0,
        width: MediaQuery.of(context).size.width * 0.75,
        margin: EdgeInsets.only(bottom: 50.0, top: 30.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                controller.previousPage();
              },
              child: Container(
                width: 40.0,
                child: Icon(
                  FlutterIcons.chevron_left_fea,
                  color: kTextDarkColor.withOpacity(0.5),
                ),
              ),
            ),
            Expanded(
              child: CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  viewportFraction: 0.2,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                ),
                items: headphones.map((i) {
                  int currentIndex = headphones.indexOf(i);

                  return Builder(builder: (BuildContext context) {
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: 150.0,
                            child: Image.asset(
                              headphones[currentIndex].image,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          headphones[currentIndex].color,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          headphones[currentIndex].price,
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        )
                      ],
                    );
                  });
                }).toList(),
              ),
            ),
            InkWell(
              onTap: () {
                controller.nextPage();
              },
              child: Container(
                width: 40.0,
                child: Icon(
                  FlutterIcons.chevron_right_fea,
                  color: kTextDarkColor.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
