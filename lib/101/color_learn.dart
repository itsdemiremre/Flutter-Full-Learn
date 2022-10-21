import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text(
          "Example",
        style: Theme.of(context).textTheme.subtitle1?.copyWith(color:Theme.of(context).errorColor),
        )),
    );
  }
}

class ColorsItems {
  static const Color porsche = Color(0xffD60038);
}