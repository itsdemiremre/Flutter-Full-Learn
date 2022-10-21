import 'package:flutter/material.dart';
import 'package:flutter_full_learning/main.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //4+2+2+2
          Expanded(
              flex:4/*her görünümde burası ekranın 10/4 ünü alacak %40.*/
              ,child: Row(
          children:[
          Expanded(child: Container(color:Colors.red)),//Expanded widgeti sadece Column ve Row içinde kullanılıyor.
          Expanded(child: Container(color:Colors.cyan)),
          Expanded(child: Container(color:Colors.green)),
          Expanded(child: Container(color:Colors.amber)),
          ],
          )),
          Spacer(flex:2),
          Expanded(flex:2, child:Row(
            mainAxisSize: MainAxisSize.min,         //IMPORTANTE!
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.fast_rewind),
              Icon(Icons.play_arrow_outlined),
              Icon(Icons.fast_forward),
            ],
          )),
          //expanded olan ekrana container atmak demek, zaten bölüştürülmüş ekrandan altta verilen değeri çıktıktan sonra gerisi aynı kalması demek. örneğin toplam 10/1000px di şimdi 200-1000 = 800 pixel, expanded olanlar 800/10 şeklinde.
          Container(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: [
                Expanded(child: Text("data")),
                Expanded(child: Text("data")),
                Expanded(child: Text("data")), // örneğin 200 lük alanı 4 eşit parca olarak kullanmak için expanded ile yazıyoruz.
                Expanded(child: Text("data")),
              ],
            ),
          ),
      ],
      )
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}