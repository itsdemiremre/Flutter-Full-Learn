import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  final String _imagePath = "https://cdn1.iconfinder.com/data/icons/online-education-indigo-vol-1/256/Back_to_School-512.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:[
          SizedBox(
              height: 100,
              child:PngImage(name: ImageItem().appleWithBookWithoutPath), //Image.asset(ImageItem().appleWithBook
          ),
          Image.network(_imagePath,errorBuilder:(context, error, stackTrace) => Icon(Icons.photo,size: 60,)),
        ],
      ),
    );
  }
}

class ImageItem {
  final String appleWithBook = "assets/pngS/apple_fruit.png";
  final String appleWithBookWithoutPath = "apple_fruit";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key,required this.name}) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath(),
      fit: BoxFit.cover,
    );
  }

  String _nameWithPath() => "assets/pngS/$name.png"; //ctrl+alt+M
}
