import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatefulWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  State<ScaffoldLearnView> createState() => _ScaffoldLearnViewState();
}

class _ScaffoldLearnViewState extends State<ScaffoldLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold Samples"),),
      body: Text("merhaba"),
      backgroundColor: Colors.red,
      extendBody: true, //sonra anlatılacak.
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //efsane!
          showModalBottomSheet(context: context, builder:(context)=>Container(
            height: 500,
          ));
      },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.ice_skating),label: "a"),
        BottomNavigationBarItem(icon: Icon(Icons.import_contacts_sharp),label: "b"),
      ],
      ),
    );
  }
}
