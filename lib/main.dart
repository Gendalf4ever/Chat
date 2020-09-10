import 'package:flutter/material.dart';
import './Views/Entrance.dart';
import './Views/chat.dart';
import './Views/connection.dart';
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
        
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
         home:ConnectionPage(),
         routes: {
           '/entrance': (context) => Entrance(),
           '/chat': (context) => Chat(),
         },
    );
  }
}

