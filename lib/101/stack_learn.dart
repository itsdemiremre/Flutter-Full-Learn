import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
    body: Stack/*Üst üste binme (stacklenme) şeklinde bi yapı varsa stack kullanılır.LAST IN, FIRST OUT*/(
      children: [
      // Container(color:Colors.red,
      // height: 100,),
      //   Padding(
      //     padding: const EdgeInsets.only(top: 50),
      //     child: Container(color:Colors.cyan,
      //       height: 100,
      //     ),
      //    ),

        //

        Positioned.fill( //fill yapmasını söylüyorsun, fillemeyeceği kadarın değerini elinle giriyorsun.
            top: 20,
            child:Container(color:Colors.blue)),
        Positioned(//width ve heigh ile verdiğin alanı kaplayan bir widget,
          // ve sonrasında top bottom right gibi değerler ile pozisyon aldırıyoruz. hangisi öne çıkacaksa o kodlama sırası olarak üstte olmalı.
            bottom: 0,
            height: 100,
            width: 100,
            child:Container(color:Colors.green)),
        ],
      ),
    );
  }
}
