import 'package:flutter/material.dart';
import 'package:flutter_full_learning/101/icon_learn.dart';
import 'package:flutter_full_learning/101/image_learn.dart';
import 'package:flutter_full_learning/101/scaffold_learn.dart';
import 'package:flutter_full_learning/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {


  final _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex = index;
      print(_currentPageIndex);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:30),
            child: Text("$_currentPageIndex"),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
            _pageController.previousPage(duration: Duration(seconds: 2), curve: Curves.elasticIn);
          },
          child: Icon(Icons.arrow_back_ios),
         ),
          FloatingActionButton(onPressed: () {
            _pageController.nextPage(duration: Duration(seconds: 2), curve: Curves.elasticIn);
          },
            child: Icon(Icons.arrow_forward_ios),
         ),
        ],
      ),

      appBar: AppBar(),
      body: PageView( //içine direk diğer tasarladığımız sayfaların isimlerini vererek çağırabildiğimiz, slider hareketli sayfalar oluşturur.
        controller: _pageController,//yanda sayfa olduğunu haber vermek için kullanılabilir, yandaki sayfanın önizlemesi gibi
        padEnds: false, //sayfanın sağını, yani yan sayfadan gelen önizleme payını artırır. azaltır. açıklamayı oku
        onPageChanged: _updatePageIndex,
        children: [
        ImageLearn(),
          StackLearn(),
        IconLearnView(),
        ScaffoldLearnView(),
        Container(color: Colors.green,),
       ],
      ),
    );
  }
}
