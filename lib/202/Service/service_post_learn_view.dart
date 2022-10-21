import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learning/202/Service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {

  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";

 final TextEditingController _titleController = TextEditingController();
 final TextEditingController _bodyController = TextEditingController();
 final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio=Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post("posts",data: postModel);
    if(response.statusCode ==HttpStatus.created) {
      name = "Basarili";
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name ?? ""),
        actions: [_isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()],
      ),
      body: Column(children: [
        TextField(
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          controller: _titleController,
          decoration: InputDecoration(labelText: "Title"),
        ),
        TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: _bodyController,
            decoration: InputDecoration(labelText: "Body")),
        TextField(
            controller:_userIdController,
            keyboardType: TextInputType.number,
            autofillHints: [AutofillHints.creditCardNumber],
            decoration: InputDecoration(labelText: "User Id")),

        TextButton(
            onPressed: _isLoading? null : () {
          if(_titleController.text.isNotEmpty
          && _bodyController.text.isNotEmpty
          && _userIdController.text.isNotEmpty
          ){
            final model = PostModel(
                body: _bodyController.text,
                title: _titleController.text,
                userId: int.tryParse(_userIdController.text));
            _addItemToService(model);
          }
        },
            child: Text("Send"),
            style: TextButton.styleFrom(backgroundColor: Colors.white,foregroundColor:Colors.black45 )),
      ],)
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  }) : _model = model, super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),),
    );
  }
}
