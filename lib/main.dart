import 'package:flutter/material.dart';
import './Views/Entrance.dart';
import './Views/post.dart';
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
         },
    );
  }
}


