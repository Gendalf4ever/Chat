import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import './Views/post_model.dart';
class HttpService {
final String url = "http://pm.tada.team/api";

Future<List<Post>> getPosts() async{
Response res = await get(url);

if (res.statusCode == 200) {
List<dynamic> body = jsonDecode(res.body);
List<Post> posts = body.map((dynamic item) => Post.fromJson(item)).toList();
return posts;
} else {
throw "Can't get posts";
}//else
}
}//class

