import 'package:flutter/material.dart';
class PaddingLearn extends StatelessWidget {

  /*final pagePaddingVertical = const EdgeInsets.symmetric(vertical: 10);

  final pagePaddingRightOnly = EdgeInsets.only(right: 2000);*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(color: Colors.white,height: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(10.0), //padding containerın kendi içinde var. | yok ise ekleyebiliriz.
                  color: Colors.white,height: 100
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly + ProjectPadding.pagePaddingVertical, //+ ile overide | birleştirme   |   en doğru kullanım bu şekilde.
              child: Text("Emre"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
static const pagePaddingVertical = const EdgeInsets.symmetric(vertical: 10);
//statik veya en üstte olduğu gibi class içine yazarak çağırabiliriz.

static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}

