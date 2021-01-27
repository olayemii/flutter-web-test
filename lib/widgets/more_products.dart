import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/models/headphone.dart';
import 'package:product_web/widgets/responsive_wrapper_widget.dart';

class MoreProducts extends StatelessWidget {
  final List<Headphone> headphones = [
    Headphone(
      color: "Red",
      image: "assets/images/hsred.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Black",
      image: "assets/images/hsblack.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Blue",
      image: "assets/images/hsblue.png",
      price: "\$249.99",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapperWidget(
      height: 430.0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 20.0,
              ),
              child: Row(
                children: [
                  Text(
                    "The market provides a huge\nrange of headphones.",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    FlutterIcons.long_arrow_left_faw,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(FlutterIcons.long_arrow_right_faw)
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.2,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    height: 200.0,
                  ),
                  items: headphones.map((i) {
                    int currentIndex = headphones.indexOf(i);

                    return Builder(builder: (BuildContext context) {
                      return Container(
                        width: 360.0,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                height: 120.0,
                                color: Color.fromRGBO(230, 235, 242, 1),
                              ),
                            ),
                            Positioned(
                              left: 20.0,
                              right: 20.0,
                              top: -30.0,
                              child: Container(
                                child: Image.asset(
                                  headphones[currentIndex].image,
                                  width: 180.0,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -30.0,
                              height: 55.0,
                              left: 20.0,
                              right: 20.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color.fromRGBO(169, 176, 185, 0.42),
                                      spreadRadius: 0,
                                      blurRadius: 1.0,
                                      offset: Offset(0, 0),
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          headphones[currentIndex].color,
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          headphones[currentIndex].price,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Container(
                                        color: Color.fromRGBO(230, 235, 242, 1),
                                        child: IconButton(
                                          icon: Icon(
                                              FlutterIcons.shoppingcart_ant),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
