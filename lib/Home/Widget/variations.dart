import 'package:flutter/material.dart';

import 'components/colorSelecter.dart';
import 'components/productDetail.dart';

class Variations extends StatefulWidget {
  const Variations({Key key}) : super(key: key);

  @override
  _VariationsState createState() => _VariationsState();
}

class _VariationsState extends State<Variations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorSelecter(),
        SizedBox(
          height: 30,
        ),
        ProductDetail()
      ],
    );
  }
}
