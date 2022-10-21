import 'package:flutter/material.dart';
class StatelessLearn extends StatelessWidget {

  final text2 = "Emre"; //textler burada yazmalı, ctrl+alt+V  ile extract variable yapıp buraya yapıştırıyoruz.
  final text3 = "Emre1";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          /*Text("Data",style: Theme.of(context).textTheme.headline3),
          Text("Data",style: Theme.of(context).textTheme.headline3),  Aynı şeyleri tekrar yazmak yerine
          Text("Data",style: Theme.of(context).textTheme.headline3),*/
          TitleTextWidget(text: text2),
          TitleTextWidget(text: text3),                                     //tek adla classtan çağırdık.
          TitleTextWidget(text: "Emre2"),
          _emptyBox(),
          TitleTextWidget(text: "Emre3"),
          _CustomContainer(), //
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(height: 100); //extract as method ctrl+alt+M
}

class _CustomContainer extends StatelessWidget { //extract  ctrl+alt+W
  const _CustomContainer({                      //AS
    Key? key,                                      //widget
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),color: Colors.red,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
                                                               //aynı şeyleri tekrar tekrar yazmaktansa taslak olarak burda oluşturup adını çağırdık.
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline3);
  }
}
