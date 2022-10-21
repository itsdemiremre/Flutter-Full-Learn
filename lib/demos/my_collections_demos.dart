import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _items.length,
          padding: PaddingUtility().paddingHorizontal,
          itemBuilder: (context, index) {
        return _CategoryCard(model: _items[index]);
      }),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  }) : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
        child:Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [Image.asset(_model.imagePath,fit:BoxFit.cover),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[Text(_model.title),Text("${_model.price} ETH")],),
              )],
          ),
        )
    );
  }
}

class CollectionModel{

  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath,required this.title,required this.price});
}

class CollectionItems{
  late final List<CollectionModel> items;



  CollectionItems(){
  items = [
  CollectionModel(imagePath: ProjectImages.imageCollection, title: "Abstract Art0", price: 1.1),
  CollectionModel(imagePath: ProjectImages.imageCollection, title: "Abstract Art1", price: 1.5),
  CollectionModel(imagePath: ProjectImages.imageCollection, title: "Abstract Art2", price: 1.4),
  CollectionModel(imagePath: ProjectImages.imageCollection, title: "Abstract Art3", price: 1.2)
  ];
  }
}

class PaddingUtility{
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral =  const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection = "assets/pngS/image_collection_demo.png";
}