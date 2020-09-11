import 'package:flutter/foundation.dart';
class Post {
  final String userName;
  final String userMessage;
Post({
  @required this.userName,
  @required this.userMessage,
});

factory Post.fromJson(Map<String, dynamic> json){
  return Post(
    userName: json['userName'] as String,
    userMessage: json['userMessage'] as String,
  );
}
}