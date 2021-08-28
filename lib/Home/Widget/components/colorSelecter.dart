import 'package:flutter/material.dart';
import 'package:landing_page/Helper/style.dart';

class ColorSelecter extends StatelessWidget {
  ColorSelecter({this.notavalible = false});
  bool notavalible;
  @override
  Widget build(BuildContext context) {
    String selected = "White";
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: brokenWhite),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Color : $selected"),
                circularColorSelecter(Colors.white),
                circularColorSelecter(Colors.black),
                circularColorSelecter(Colors.greenAccent),
                circularColorSelecter(Colors.blue),
                circularColorSelecter(Colors.red)
              ],
            ),
          ),
          // notavalible?
          Container(
            color: brokenWhite.withOpacity(0.3),
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 2,
              width: 280,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget circularColorSelecter(Color color) {
    return Container(
      width: 30,
      height: 30,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
    );
  }
}
