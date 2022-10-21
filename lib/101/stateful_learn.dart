import 'package:flutter/material.dart';
import 'package:flutter_full_learning/product/counter_hello_button.dart';
import 'package:flutter_full_learning/product/languages/language_items.dart';

class StatefulLearn extends StatefulWidget { //burası stateless gibidir denilebilir. değişmez, sadece dışarıdan data alır.
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _sayi=0;

  // void increaseValue(){
  //   setState(() {
  // _sayi = _sayi+1;
  //   });
  // }
  //
  // void decreaseValue(){
  //   setState(() {
  //   _sayi = _sayi-1;
  //   });
  // }

  void _updateCounter (bool isIncrease){
      if(isIncrease){
        _sayi = _sayi+1;
      }else{
        _sayi = _sayi-1;
      }
      setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_increaseButton(), _decreaseButton()],
      ),
      body: Column(
        children: [
          Center(child: Text(_sayi.toString(),style: Theme.of(context).textTheme.headline3)),
          Placeholder(),
          CounterHelloButton(),
        ],
      ));
  }

  FloatingActionButton _increaseButton() {
    print("Burada");
    return FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
              _updateCounter(true);
          },
          child: Icon(Icons.add),
        );
  }

  Padding _decreaseButton() {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).errorColor,
            onPressed: () {
               _updateCounter(false);
            },
          child: Icon(Icons.remove),
          ),
        );
  }
}
