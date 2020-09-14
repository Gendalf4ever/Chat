
import 'package:flutter/material.dart';
import './Views/Entrance.dart';

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
         home:Entrance(),
         routes: {
           '/entrance': (context) => Entrance(),
           //'/chat': (context) => Chat(),
         },
    );
  }
}


