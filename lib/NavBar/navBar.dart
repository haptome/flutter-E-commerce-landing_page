import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing_page/Helper/style.dart';

class NavBar extends StatefulWidget {
  NavBar();

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image.asset(
        //   "assets/images/logo.png",
        //   width: 80,
        // ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "assets/icons/shemsu.svg",
                width: 85,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Man",
                style: TextStyle(color: disableText, fontSize: 14),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Women",
                style: TextStyle(color: normalText, fontSize: 14),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Childern",
                style: TextStyle(color: disableText, fontSize: 14),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Explore",
                style: TextStyle(color: disableText, fontSize: 14),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              "assets/icons/shopping_bag.svg",
              height: 18,
            ),
            SizedBox(
              width: 15,
            ),
            SvgPicture.asset(
              "assets/icons/search.svg",
              height: 18,
            ),
            SizedBox(
              width: 15,
            ),
            SvgPicture.asset(
              "assets/icons/user.svg",
              height: 18,
            ),
          ],
        ),
      ],
    );
  }
}
