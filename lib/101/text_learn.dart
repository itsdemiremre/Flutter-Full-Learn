import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget{
  TextLearnView({Key? key, this.userName,}) : super(key: key);
  final String name = "Emre";

final String? userName;

final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children :[
        Text(
          "Welcome $name ${name.length}",
          maxLines: 2,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.end,
          style: ProjectStyles.welcomeStyle,
        ),
          Text(
            "Hello $name ${name.length}",
            maxLines: 2,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.headline5?.copyWith(
              color: ProjectColors.welcomeColor),
            ),
          Text(userName ?? ""),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

  class ProjectStyles {

  static TextStyle welcomeStyle = const TextStyle(
  wordSpacing: 4,letterSpacing: 2,
  color: Colors.yellow,
  decoration: TextDecoration.underline,
  fontStyle: FontStyle.italic,
  fontSize: 18,fontWeight: FontWeight.w500);
  }

  class ProjectColors{
  static Color welcomeColor = Colors.red;
  }

  class ProjectKeys{
  final String welcome = "Merhaba";
  }