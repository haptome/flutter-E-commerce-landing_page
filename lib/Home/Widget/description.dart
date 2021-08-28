import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:landing_page/Helper/style.dart';

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Summer Collection",
          style: TextStyle(color: normalText, fontSize: 12),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          child: Text(
            "Davis Abstract Print Back Cut Out Maxi Dress",
            style: TextStyle(
                color: normalText, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 250,
          child: Text(
            "This print is an absolute must-have for your new season wardrobe love. Featuring an abstract print with back cut out design and a maxi length. ",
            style: TextStyle(
              color: disableText,
              fontSize: 12,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/share.svg",
              height: 18,
            ),
            SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              "assets/icons/Like.svg",
              height: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "3.1K",
              style: TextStyle(
                  color: normalText, fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
