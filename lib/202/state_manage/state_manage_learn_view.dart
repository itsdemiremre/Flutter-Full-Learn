import 'package:flutter/material.dart';
import 'package:flutter_full_learning/202/state_manage/state_learn_view_model.dart';

class StateManagementLearnView extends StatefulWidget {
  const StateManagementLearnView({super.key});

  @override
  State<StateManagementLearnView> createState() => _StateManagementLearnViewState();
}

class _StateManagementLearnViewState extends StateLearnViewModel {
   @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        changeVisibility();
      },),
      appBar: AppBar(
        backgroundColor: isThereOpacity ? Colors.red : Colors.green,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
    );
  }
}