import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("a" * 500),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("b" * 50),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: BoxConstraints(maxWidth: 150,minWidth: 50,
            maxHeight: 100),
            child: Text("aa"*1),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            ),
        ],
      ),
    );
  }
}
class ProjectUtility{
  static BoxDecoration boxDecoration = BoxDecoration(
     // borderRadius: BorderRadius.circular(10),
  gradient: LinearGradient(colors: [Colors.red,Colors.green]),
  boxShadow: [BoxShadow(color: Colors.white,offset: Offset(1.2,3),blurRadius: 2.8)],
  shape: BoxShape.circle, border: Border.all(width: 3, color: Colors.yellowAccent));
}

class ProjectContainerDecoration extends BoxDecoration{
  ProjectContainerDecoration():super(
   // borderRadius: BorderRadius.circular(10),
  gradient: LinearGradient(colors: [Colors.red,Colors.green]),
  boxShadow: [BoxShadow(color: Colors.white,offset: Offset(1.2,3),blurRadius: 2.8)],
  shape: BoxShape.circle, border: Border.all(width: 3, color: Colors.yellowAccent));
}
