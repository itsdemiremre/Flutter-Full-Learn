import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);

  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(
        children: [IconButton(onPressed:() {},
          icon :Icon(Icons.message_outlined,
          color: Colors.red,
          size: 40,
        )),
          SizedBox(height: 50,),
          IconButton(onPressed:() {},
              icon :Icon(Icons.message_outlined,
                color: IconColors().porsche,
                size: IconSizes().iconSmall, //class dan
              )),

          IconButton(onPressed:() {},
              icon :Icon(Icons.message_outlined,
                color: Theme.of(context).backgroundColor, //buradan renk verince tema değişikliğiyle jenerik olarak uygun renk atabiliyor.
                size: iconSize.iconSmall,
              )),
        ],
      ),
    );
  }
}
class IconSizes{
  final double iconSmall=40;
}

class IconColors{
  final Color porsche = Color(0xffEDA861);
}