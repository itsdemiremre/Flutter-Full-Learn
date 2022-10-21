import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_full_learning/202/Service/comment_model.dart';

import 'post_model.dart';


abstract class IPostService {
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel,int id);
  Future<bool> deleteItemFromService(int id);
  Future<List<PostModel>?> fetchPostItemsAdvanced();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId  (int postId);
  
}

class PostService implements IPostService {

  final Dio _dio;
  PostService():_dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));


  @override
  Future<bool> addItemToService(PostModel postModel) async {

    try{
      final response = await _dio.post(_PostServicePaths.posts.name,data: postModel);
      return response.statusCode == HttpStatus.created;
    } on DioError catch (error) {
        _ShowDebug.showDioError(error,this);
    }
    return false;
  }

  @override
  Future<bool> putItemToService(PostModel postModel,int id) async {

    try{
      final response = await _dio.put("${_PostServicePaths.posts.name}/$id",data: postModel);
      return response.statusCode == HttpStatus.ok;
    } on DioError catch (error) {
        _ShowDebug.showDioError(error,this);

    }
    return false;
  }

  @override
  Future<bool> deleteItemFromService(int id) async {

    try{
      final response = await _dio.put("${_PostServicePaths.posts.name}/$id");
      return response.statusCode == HttpStatus.ok;
    } on DioError catch (error) {
        _ShowDebug.showDioError(error,this);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvanced() async {
    try{
      final response = await _dio.get(_PostServicePaths.posts.name);

      if(response.statusCode == HttpStatus.ok){
        final _datas = response.data;

        if(_datas is List){
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception){
      _ShowDebug.showDioError(exception,this);
    }
      return null;
  }
  
  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try{
      final response = await _dio.get(_PostServicePaths.comments.name,queryParameters: {_PostQueryPaths.postId.name:postId});

      if(response.statusCode == HttpStatus.ok){
        final _datas = response.data;

        if(_datas is List){
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception){
      _ShowDebug.showDioError(exception,this);
    }
      return null;
  }


}
enum _PostServicePaths {posts,comments}
enum _PostQueryPaths {postId}

class _ShowDebug{

 static void showDioError<T>(DioError error,T type) {
  if (kDebugMode) {
    print(error.message); 
    print(type);
    print("-------------");
  }    
  }
}