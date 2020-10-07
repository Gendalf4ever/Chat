import 'package:flutter/material.dart';
import './Views/Entrance.dart';
import './Views/websockettest.dart';
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
         home:WebSocketTest(),
         routes: {
           '/entrance': (context) => WebSocketTest(),
         },
    );
  }
}


