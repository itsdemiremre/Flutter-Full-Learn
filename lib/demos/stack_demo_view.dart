import 'package:flutter/material.dart';
import 'package:flutter_full_learning/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 50.0;
  final _cardWidth  =200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex:4,
              child: Stack(
                alignment: Alignment.center,
              children: [
               Positioned.fill(child: RandomImage(),bottom: _cardHeight/2,),
               Positioned(height:_cardHeight,bottom: 0,width: _cardWidth //burada değerini 50 verdiğimiz
                   // Card ı yarısında gibi göstermek adına Image widgetına sarmaladığımız positioned fill widgetını 50/2=25 değerinde alttan küçülttük.
                ,child: _cardCustom())
            ],
           )),
          Spacer(flex: 6),

        ],
      ),
    );
  }


Card _cardCustom(){
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(),
  );
 }
}