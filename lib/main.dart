import 'package:flutter/material.dart';
import './Views/Entrance.dart';
import './Views/chat.dart';
import './websocket.dart';
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
         home:Websocket(),
         routes: {
           '/entrance': (context) => Entrance(),
           '/chat': (context) => Chat(),
         },
    );
  }
}


