import 'package:flutter/material.dart';
import 'package:flutter_full_learning/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {

  var user9 = PostsModel8(body: "a");

  @override
  void initState() {
    super.initState();

    // final user1 = PostsModel()
    // ..userId=1
    // ..body = "ed";
    // user1.body = "hello";
    //
    // final user2 = PostsModel2(1, 2, "a", "b");
    // user2.body="a";
    //
    // final user3 = PostsModel3(1, 2, "a", "b");
    // //user3.body="a";
    //
    // final user4 = PostsModel4(userId: 1, id: 2, title: "a", body: "b");
    // //user4.body"a";
    //
    // final user5 = PostsModel5(userId: 1, id: 2, title: "title", body: "body");
    // user5.userId;
    //
    // final user6 = PostsModel6(userId: 1, id: 2, title: "title", body: "body");
    //
    // final user7 = PostsModel7();

    //Service
    final user8 = PostsModel8(body: "A");


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = user9.copyWith(title: "Ed");
          user9.updateBody(null);
        });
      },
     ),
      appBar: AppBar(
        title: Text(user9.body ?? "Don't have any data"),
      ),
    );
  }
}
