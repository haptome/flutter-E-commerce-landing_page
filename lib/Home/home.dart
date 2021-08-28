import 'package:flutter/material.dart';
import 'package:landing_page/Helper/style.dart';
import 'package:landing_page/NavBar/navBar.dart';

import 'Widget/components/rating.dart';
import 'Widget/description.dart';
import 'Widget/variations.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Padding(
        padding: EdgeInsets.fromLTRB(100, 40, 100, 0),
        child: Container(
          child: Stack(
            // alignment: Alignment.topLeft,
            children: [
              Container(
                child: Column(
                  children: [
                    NavBar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 100),
                                    child: Description(),
                                  ),
                                ),
                                Expanded(
                                    child: Image.asset(
                                  "assets/images/model.png",
                                  height: 600,
                                )),
                                Expanded(child: Variations()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(bottom: 10, child: Rating())
            ],
          ),
        ),
      ),
    );
  }
}
