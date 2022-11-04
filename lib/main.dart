import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learning/101/app_bar.dart';
import 'package:flutter_full_learning/101/button_learn.dart';
import 'package:flutter_full_learning/101/card_learn.dart';
import 'package:flutter_full_learning/101/color_learn.dart';
import 'package:flutter_full_learning/101/column_row_learn.dart';
import 'package:flutter_full_learning/101/container_sized_box_learn.dart';
import 'package:flutter_full_learning/101/custom_widget_learn.dart';
import 'package:flutter_full_learning/101/icon_learn.dart';
import 'package:flutter_full_learning/101/image_learn.dart';
import 'package:flutter_full_learning/101/indicator_learn.dart';
import 'package:flutter_full_learning/101/list_tile_learn.dart';
import 'package:flutter_full_learning/101/listview_builder.dart';
import 'package:flutter_full_learning/101/listview_learn.dart';
import 'package:flutter_full_learning/101/padding_learn.dart';
import 'package:flutter_full_learning/101/pageview_learn.dart';
import 'package:flutter_full_learning/101/scaffold_learn.dart';
import 'package:flutter_full_learning/101/stack_learn.dart';
import 'package:flutter_full_learning/101/stateful_lifecycle_learn.dart';
import 'package:flutter_full_learning/101/stateless_learn.dart';
import 'package:flutter_full_learning/101/text_learn.dart';
import 'package:flutter_full_learning/101/textfield_learn.dart';
import 'package:flutter_full_learning/202/Service/service_learn_get_view.dart';
import 'package:flutter_full_learning/202/Service/service_post_learn_view.dart';
import 'package:flutter_full_learning/202/model_learn_view.dart';
import 'package:flutter_full_learning/202/package_learn_view.dart';
import 'package:flutter_full_learning/202/tab_learn.dart';
import 'package:flutter_full_learning/202/theme/light_theme.dart';
import 'package:flutter_full_learning/202/theme_learn_view.dart';
import 'package:flutter_full_learning/demos/color_demos_view.dart';
import 'package:flutter_full_learning/demos/color_lifecycle_view.dart';
import 'package:flutter_full_learning/demos/my_collections_demos.dart';
import 'package:flutter_full_learning/demos/note_demos_app.dart';
import 'package:flutter_full_learning/demos/stack_demo_view.dart';
import 'package:flutter_full_learning/101/stateful_learn.dart';

import '101/navigation_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
          theme: LightTheme().theme,

      // ThemeData.dark().copyWith(
      // tabBarTheme: TabBarTheme(
      // labelColor: Colors.white,
      // unselectedLabelColor:Colors.red,
      // indicatorSize: TabBarIndicatorSize.label,
      //  ),
      // bottomAppBarTheme: BottomAppBarTheme(shape: CircularNotchedRectangle()),
      // progressIndicatorTheme: const ProgressIndicatorThemeData(color :Colors.lightGreenAccent),
      // listTileTheme: const ListTileThemeData(textColor: Colors.white,contentPadding: EdgeInsets.zero),
      // cardTheme: CardTheme(
      // shape: RoundedRectangleBorder(
      // borderRadius: BorderRadius.circular(20))),
      // errorColor: ColorsItems.porsche,
      // extSelectionTheme: TextSelectionThemeData(selectionColor: Colors.red,selectionHandleColor: Colors.blue,cursorColor: Colors.amber),
      // textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black)),//text teması.
      // inputDecorationTheme: InputDecorationTheme(filled: true,fillColor: Colors.blueAccent,iconColor: Colors.red,border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.white, fontSize: 25)),
      // appBarTheme: const AppBarTheme(//Appbar temasını buradan belirleyebiliyoruz.
      // centerTitle: true,
      // systemOverlayStyle: SystemUiOverlayStyle.light,
      // backgroundColor: Colors.transparent, elevation: 0,)),

             home: ThemeLearnView(),
    );
  }
}
