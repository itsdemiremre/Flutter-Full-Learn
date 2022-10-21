import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(child: Text("Save",style:  Theme.of(context).textTheme.subtitle1,),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states){
            if(states.contains(MaterialState.pressed)){
              return Colors.green;
            }
            return Colors.white;
          })),
              onPressed: () {}),
          ElevatedButton(onPressed: null, child: Text("")),//onpressed methoduna null yazınca disable bir görünüm ve işlevsiz hale geliyor.
          IconButton(onPressed: () {}, icon: Icon(Icons.zoom_in_outlined)),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.repeat)),
          OutlinedButton(style: OutlinedButton.styleFrom(backgroundColor: Colors.lightGreenAccent,padding:EdgeInsets.all(10), shape: CircleBorder()),onPressed: () {}, child: Text("aa")),
          InkWell(child: Text("custom"),onTap: (){},),
          GestureDetector(child: Text("Gesture Detector"),onTap: (){},),
          OutlinedButton.icon(onPressed: () {}, icon: Icon(Icons.photo), label: Text("data")),
          ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.translate), label: Text("asdffsd")),
          Container(height: 100,color: Colors.white,),
          SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(11)))),
              onPressed: () {

          }, child: Padding(
            padding: EdgeInsets.only(top:10,bottom: 10,left: 40,right: 40),
            child: Text("Place Bid",style: Theme.of(context).textTheme.headline5,),
          )),
        ],
      ),
    );
  }
}

//Borders:
//CircleBorder(), RoundedRectangleBorder()