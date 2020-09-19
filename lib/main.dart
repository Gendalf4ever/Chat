import 'package:Chat/Views/post_model.dart';
import 'package:Chat/posts.dart';
import 'package:flutter/material.dart';
import './Views/Entrance.dart';
import 'test_chat.dart';
import './Views/chat.dart';
import 'workingchat.dart';
import 'finaltest.dart';


void main() {
 runApp(Main());
}
//http://127.0.0.1:55976/gTcAwDVx1l4=
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
         home:TestHttp(),
         routes: {
           '/entrance': (context) => TestHttp(),
           //'/chat': (context) => Chat(value),
         },
    );
  }
}


