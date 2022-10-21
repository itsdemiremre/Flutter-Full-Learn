import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learning/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = "Create Your First Note";
  final _description = "Add a note about Anything.";
  final _createNoteBtn = "Create A Note ";
  final _importNoteBtn = "Import Notes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      body: Padding(
        padding: PadingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItem().appleWithBookWithoutPath),
            _TitleWidget(title: _description),
             Padding(
              padding: PadingItems.verticalPadding,
              child: _SubtitleWidget(title: _description *2,/*textAlign:TextAlign.right*/),
            ),
            Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNoteBtn)),
            SizedBox(height: 5,/*ButtonHeights.buttonNormalHeight*/),
          ],
        ),
      ),
    );
  }
//children içindeki Elevated Button ' un Ctrl+Alt+M method extract şeklinde çıkarılması.
  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child:SizedBox(height: ButtonSizes.buttonNormalHeight,
              child: Text(_createNoteBtn,style: Theme.of(context).textTheme.headline5,)));
  }
}

//Centered Text Widget.
class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({Key? key, this.textAlign = TextAlign.center,required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w300));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PadingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonSizes {
  static const double buttonNormalHeight = 30.0;  //Tüm butonların size ı aynı olacaksa direk Theme.of dan da verebiliriz.
}