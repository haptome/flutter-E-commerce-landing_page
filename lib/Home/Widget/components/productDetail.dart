import 'package:flutter/material.dart';
import 'package:landing_page/Helper/style.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String pid = "D/123e45ng6r445ff";
  String model = "S";
  String height = "177 Cm";
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 250,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: brokenWhite),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product ID : $pid",
              style: TextStyle(color: normalText, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Model Size : $model",
              style: TextStyle(color: normalText, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Height: $height",
              style: TextStyle(color: normalText, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Select Your Size :____",
              style: TextStyle(color: normalText, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                sizeSelecter("S"),
                SizedBox(
                  width: 10,
                ),
                sizeSelecter("M"),
                SizedBox(
                  width: 10,
                ),
                sizeSelecter("L"),
                SizedBox(
                  width: 10,
                ),
                sizeSelecter("XS"),
                SizedBox(
                  width: 10,
                ),
                sizeSelecter("XXL")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        "ADD TO CART",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  )),
            )
          ],
        ));
  }

  Widget sizeSelecter(String text) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: normalText, fontSize: 12),
        ),
      ),
    );
  }
}
