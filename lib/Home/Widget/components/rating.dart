import 'package:flutter/material.dart';
import 'package:landing_page/Helper/style.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Rating extends StatefulWidget {
  const Rating({Key key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  List<String> titles = ["AO", "Jam Moore", "mccoy"];
  List<String> comment = [
    "Great selection, affordable prices and exceptional customer service!!!!",
    "I purchased two unique dresses and I love them!! The prices were great, customer service was excellent and I received lots of compliments on the looks. ",
    "Lovely fun design. Nice fit would recommend due to the design to buy a size up."
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 200,
        height: 200,
        child: Column(
          children: [
            Expanded(
                child: ScrollSnapList(
              itemBuilder: _buildItemList,
              itemSize: 370,
              dynamicItemSize: true,
              focusOnItemTap: true,
              itemCount: titles.length,
              onItemFocus: (int) {
                print('Done!');
              },
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildItemList(BuildContext context, int index) {
    return Center(
      child: Container(
        width: 340,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: brokenWhite.withOpacity(0.9),
              ),
              width: 340,
              height: 150,
              padding: EdgeInsets.fromLTRB(15, 10, 10, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${titles[index]}',
                    style: TextStyle(fontSize: 20.0, color: normalText),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${comment[index]}',
                    style: TextStyle(fontSize: 15.0, color: disableText),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
