import 'dart:ui';

import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ImagePaths.apple_fruit.toWidget(),
    );
  }
}

enum ImagePaths{
  // ignore: constant_identifier_names
  apple_fruit
}
extension ImagePathsExtension on ImagePaths {
  String path() {
    return "assets/pngS/$name.png";
  }
   Widget toWidget({double height = 24}) {
    return Image.asset(
      path(),
      height: height,
      );
  }
}