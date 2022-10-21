// class PostsModel{
//   int? userId;
//   int? id;
//   String? title;
//   String? body;
// }
//
//
//
// class PostsModel2{
//    int userId;
//    int id;
//    String title;
//    String body;
//
//   PostsModel2(this.userId, this.id, this.title, this.body);
// }
//
//
//
// class PostsModel3{
//   final int userId;
//   final int id;
//   final String title;
//   final String body;
//
//   PostsModel3(this.userId, this.id, this.title, this.body);
// }
//
//
//
//
// class PostsModel4{
//   final int userId;
//   final int id;
//   final String title;
//   final String body;
//
//   PostsModel4({required this.userId, required this.id, required this.title, required this.body});
// }
//
//
//
//
// class PostsModel5{
//   final int _userId;
//   final int _id;
//   final String _title;
//   final String _body;
//
//   int get userId => userId;
//
//   PostsModel5({
//     required int userId,
//     required int id,
//     required String title,
//     required String body,
//   }) : _userId = userId,
//         _id = id,
//         _title = title,
//         _body = body;
// }
//
//
//
//
//
// class PostsModel6{
//   late final int _userId; //yalnızca constructer anında sonradan gelebilir, farklı bi zamanda değere eşitleme yaparsan hata alırsın, uygulama crash yer.
//   late final int _id;
//   late final String _title;
//   late final String _body;
//
//   PostsModel6({
//     required int userId,
//     required int id,
//     required String title,
//     required String body,
//   })
//   {
//     _userId = userId;
//     _id = id;
//     _title = title;
//     _body = body;
//   }
// }
//
//
//
// class PostsModel7{
//  late final int _userId;
//  late final int _id;
//  late final String _title;
//  late final String _body;
//
//   PostsModel7({
//      int userId = 0,
//      int id = 0,
//      String title = "" ,
//      String body = "",
//   }) : _userId = userId,
//         _id = id,
//         _title = title,
//         _body = body;
// }

//recommended by Vb for web service usings.
class PostsModel8{
   final int? userId;
   final int? id;
   final String? title;
   String? body;

   PostsModel8({this.userId, this.id, this.title, this.body});

   void updateBody(String? data) {
     if(data!=null && data.isNotEmpty) {
       body = data;
     }
   }

   PostsModel8 copyWith ({
  int? userId,
     int? id,
     String? title,
     String? body,
}){
     return PostsModel8(
       userId: userId ?? this.userId,
       id:id ?? this.id,
       title: title ?? this.title,
       body: body ?? this.body,
     );
   }
}

