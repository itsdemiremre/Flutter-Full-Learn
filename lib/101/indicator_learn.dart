import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [CenterCircularRedProgress()],),//custom widgettan alınan.
      body: Center(
        child: Column(children:[ CircularProgressIndicator(),Spacer(),LinearProgressIndicator(backgroundColor: Colors.cyan,)], //mainden alınan temayla çalışan standart widget.
      ),
    ));
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({
    Key? key,
  }) : super(key: key);
  final red = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: red,strokeWidth: 10,value: 0.9/*value verince dönme hareketini animasyonlarla modifiye edebiliyoruz*/,backgroundColor: Colors.white,));
  }
}
