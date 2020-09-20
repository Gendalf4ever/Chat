import 'package:flutter/material.dart';
import './Views/Entrance.dart';

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
         home:Entrance(),
         routes: {
           '/entrance': (context) => Entrance(),
         },
    );
  }
}


