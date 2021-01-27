import 'package:flutter/material.dart';
import 'package:product_web/widgets/animation_model.dart';
import 'package:product_web/widgets/feature_animator.dart';

class Features extends StatefulWidget {
  final bool isActive;
  Features({this.isActive});
  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  List<SlideItemAnimationModel> slideItems = [
    SlideItemAnimationModel(
      id: 'slide_1',
      entryDuration: 800,
      entry: 0,
    ),
    SlideItemAnimationModel(
      id: 'slide_2',
      entryDuration: 800,
      entry: 500,
    ),
    SlideItemAnimationModel(
      id: 'slide_3',
      entryDuration: 800,
      entry: 1300,
    ),
    SlideItemAnimationModel(
      id: 'slide_4',
      entryDuration: 800,
      entry: 33,
    ),
  ];
  final slideItemOffset = Offset(0, 60);

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    animation = Tween<double>(begin: 0, end: 2000).animate(controller);

    animation.addListener(() {
      print(animation.value);
      this.slideItems =
          getSlideItemAnimationUpdate(animation.value, this.slideItems);
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant Features oldWidget) {
    if (this.widget.isActive) {
      controller
        ..forward()
        ..addListener(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print(slideItems.map((e) => e.visible).toList());
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Exhale your worries while\ninhaling music.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: Stack(
              // alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                Image.asset("assets/images/headset8.png"),
                Positioned(
                  top: 100.0,
                  left: 150.0,
                  child: FeatureAnimator(
                    direction:
                        getSlideItemAnimationVisibility("slide_1", slideItems),
                    duration:
                        getSlideItemAnimationDuration("slide_1", slideItems),
                    child: Image.asset("assets/images/bluetooth.png"),
                    offset: slideItemOffset,
                  ),
                ),
                Positioned(
                  top: 120.0,
                  left: 150.0,
                  child: FeatureAnimator(
                    direction:
                        getSlideItemAnimationVisibility("slide_2", slideItems),
                    duration:
                        getSlideItemAnimationDuration("slide_2", slideItems),
                    child: Image.asset("assets/images/headphone.png"),
                    offset: slideItemOffset,
                  ),
                ),
                Positioned(
                  top: 350.0,
                  left: 150.0,
                  child: FeatureAnimator(
                    direction:
                        getSlideItemAnimationVisibility("slide_3", slideItems),
                    duration:
                        getSlideItemAnimationDuration("slide_3", slideItems),
                    child: Image.asset("assets/images/microphone.png"),
                    offset: slideItemOffset,
                  ),
                ),
                Positioned(
                  top: 80.0,
                  right: 150.0,
                  child: FeatureAnimator(
                    direction:
                        getSlideItemAnimationVisibility("slide_1", slideItems),
                    duration:
                        getSlideItemAnimationDuration("slide_1", slideItems),
                    child: Image.asset("assets/images/microphone2.png"),
                    offset: slideItemOffset,
                  ),
                ),
                Positioned(
                  top: 200.0,
                  right: 140.0,
                  child: FeatureAnimator(
                    direction:
                        getSlideItemAnimationVisibility("slide_2", slideItems),
                    duration:
                        getSlideItemAnimationDuration("slide_2", slideItems),
                    child: Image.asset("assets/images/charging.png"),
                    offset: slideItemOffset,
                  ),
                ),
                Positioned(
                  top: 400.0,
                  right: 150.0,
                  child: FeatureAnimator(
                    direction:
                        getSlideItemAnimationVisibility("slide_3", slideItems),
                    duration:
                        getSlideItemAnimationDuration("slide_3", slideItems),
                    child: Image.asset("assets/images/battery.png"),
                    offset: slideItemOffset,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
