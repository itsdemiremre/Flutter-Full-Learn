import 'package:flutter/material.dart';

class LightTheme {

  final _lightColor = _LightColor();
ThemeData theme = ThemeData(
  floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.green),
  textTheme: ThemeData.light().textTheme.copyWith(subtitle1: TextStyle(fontSize: 20,color: Colors.black)),
);
}

class _LightColor {
  final Color _textColor = Colors.redAccent; 
}