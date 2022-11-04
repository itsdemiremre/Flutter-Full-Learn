import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearnView> createState() => _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(child: Container(
        height: WidgetSizes.normalCardHeight.value(),
        color: Colors.green,
      ),
     ),
    );
  }
}

enum WidgetSizes {normalCardHeight,profileCircularWidth}

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
     
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.profileCircularWidth:
        return 20;
    }
  }
}