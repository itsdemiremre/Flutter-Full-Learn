import 'package:flutter/material.dart';

import 'state_manage_learn_view.dart';


abstract class StateLearnViewModel extends State<StateManagementLearnView> {
    void initState() {
  }

  bool isVisible = false;
  bool isThereOpacity = false;

  
  void changeVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isThereOpacity = !isThereOpacity;
    });
  }
}