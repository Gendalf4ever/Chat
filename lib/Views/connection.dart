import 'package:Chat/Views/http_service.dart';
import 'package:flutter/material.dart';
import 'package:Chat/Views/post_model.dart';
class ConnectionPage extends StatelessWidget{
   final HttpService httpService = HttpService();
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(

      ),
      body: FutureBuilder(future: httpService.getPosts(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>>snapshot){
        if (snapshot.hasData){
          List<Post> posts = snapshot.data;
          return ListView(
            children: posts.map((Post post) => ListTile(title: Text(post.userMessage),)).toList(),
          );
        }
        return Center (child: CircularProgressIndicator());
      },)
    );
  }
}