import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(color: Colors.white);
          },
          itemBuilder: (context, index) {
            print(index);
        return SizedBox(
          height: 150,
          child: Column(
            children: [
              Expanded(child: Image.network("https://picsum.photos/id/237/200/300")),
              Text("$index")
            ],
          ),
        );
      }, itemCount: 15,),
    );
  }
}
