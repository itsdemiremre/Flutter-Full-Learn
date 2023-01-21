import 'package:flutter/material.dart';
import 'package:flutter_full_learning/202/oop_learn.dart';

class OOPLearnView extends StatefulWidget {
  const OOPLearnView({Key? key}) : super(key: key);

  @override
  State<OOPLearnView> createState() => _OOPLearnViewState();
}

class _OOPLearnViewState extends State<OOPLearnView> {

  FileDownload? download;

  @override
  void initState() {
    super.initState();
    download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        CircularProgressIndicator(color: Colors.amber,)
      ]),
      floatingActionButton: FloatingActionButton(onPressed: () 
      {download?.downloadItem(null);
      }),
    );
  }
}