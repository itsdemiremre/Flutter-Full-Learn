import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         Card(
           margin: ProjectMargins().cardMargin,
           //color: Colors.lightGreenAccent, or color: Theme.of(context).errorColor,
             child: SizedBox(height: 100,width:200, child: Center(child: Text("Ali")),),
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         ),
          Card(
            margin: ProjectMargins().cardMargin,
            child: SizedBox(height: 100,width:200, child: Center(child: Text("Ali")),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          _CustomCard(child: SizedBox(height: 100,width:200, child: Center(child: Text("Ali")),),) //Doğru kullanım.
        ],
      ),
    );
  }
}
class ProjectMargins{
  final cardMargin = EdgeInsets.all(10);
}



class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key,required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {

    return Card(
      margin: ProjectMargins().cardMargin,
      child: child,
      shape: roundedRectangleBorder, //ctrl+ alt +v
    );
  }
}

//Borders
//shape: StadiumBorder(), CircleBorder(), RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),