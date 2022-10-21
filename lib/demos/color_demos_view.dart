//bir ekran, ekranda 3 butonla renk değişimi. Seçili olan butonda selected icon olsun
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor !);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.initialColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _backgroundColorChanger,
          items: [BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red),label: "Red"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellowAccent),label: "Yellow"),
            BottomNavigationBarItem(icon: _ColorContainer(color: Colors.lightBlue),label: "Blue"),
      ]),
    );
  }

  void _backgroundColorChanger(int value) {
        if(value==_MyColors.red.index){changeBackgroundColor(Colors.red);}
        else if(value==_MyColors.yellow.index){changeBackgroundColor(Colors.yellow);}
        else if (value==_MyColors.blue.index){changeBackgroundColor(Colors.lightBlue);}
  }
}
enum _MyColors{red, yellow, blue}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key, required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color,width: 20,height: 20);
  }
}
