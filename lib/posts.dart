import 'package:Chat/workingchat.dart';
import 'package:flutter/material.dart';
import './Views/post_model.dart';
class PostPage extends  StatelessWidget {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Text("Posts"),
      ),  
      body: FutureBuilder(future: httpService.getPosts(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
        if (snapshot.hasData){
        List<Post> posts = snapshot.data;
        return ListView(
          children: posts
          .map((Post post) => ListTile(
            title: Text(post.messagetext),
            )).toList()
          );
        } //if
        return Center(
          child: CircularProgressIndicator()
          );
      }
      ),  
    );
  }
}