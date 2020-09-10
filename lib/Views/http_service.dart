import 'package:Chat/Views/post_model.dart';
import 'package:http/http.dart';
import 'dart:convert';
class HttpService{
  final String postsUrl = 'pm.tada.team';

  Future<List<Post>> getPosts() async {
Response res = await get(postsUrl);

if (res.statusCode == 200){
  List<dynamic> body = jsonDecode(res.body);

  List<Post> posts = 
  body.map((dynamic item) => Post.fromJson(item)).toList();
  return posts;
} else {
  throw "Can't connect to the server";
}
  }
}