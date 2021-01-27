import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/utils/colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/logo.png",
          ),
          Row(
            children: [
              Text(
                "Home",
                style: TextStyle(
                  color: kTextDarkColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 45.0),
              Text(
                "Product",
                style: TextStyle(
                  color: kTextDarkColor,
                ),
              ),
              SizedBox(width: 45.0),
              Text(
                "Features",
                style: TextStyle(
                  color: kTextDarkColor,
                ),
              ),
              SizedBox(width: 45.0),
              Text(
                "Design",
                style: TextStyle(
                  color: kTextDarkColor,
                ),
              ),
              SizedBox(width: 45.0),
              Text(
                "Support",
                style: TextStyle(
                  color: kTextDarkColor,
                ),
              ),
              SizedBox(
                width: 60.0,
              ),
              IconButton(
                icon: Icon(FlutterIcons.search1_ant),
                iconSize: 18.0,
                onPressed: () {},
              ),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                icon: Icon(FlutterIcons.user_ant),
                iconSize: 18.0,
                onPressed: () {},
              ),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                icon: Icon(FlutterIcons.shoppingcart_ant),
                iconSize: 18.0,
                onPressed: () {},
              ),
              SizedBox(
                width: 20.0,
              ),
              FlatButton(
                color: kDarkButtonColor,
                onPressed: () {},
                padding: EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 25.0,
                ),
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
