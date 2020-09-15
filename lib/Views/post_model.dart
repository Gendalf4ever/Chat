import 'package:flutter/foundation.dart';

class Post {
  final String name;
  final String messagetext;
Post({
  @required this.name,
  @required this.messagetext,
});

factory Post.fromJson(Map<String, dynamic> json){
  return Post(
    name: json['name'] as String,
    messagetext: json['messagetext'] as String,
  );
}
}