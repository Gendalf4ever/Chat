import 'package:flutter/material.dart';
import './Views/Entrance.dart';
import 'test_chat.dart';
import './Views/chat.dart';
void main() {
 runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
         home:MyApp(),
         routes: {
           '/entrance': (context) => MyApp(),
           //'/chat': (context) => Chat(value),
         },
    );
  }
}


