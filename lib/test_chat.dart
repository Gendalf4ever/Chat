import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void man() {
  runApp(MaterialApp(
home: HomePage(),
  )
  );
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map data;
  List userData;
  Future getData() async {
    http.Response response = await http.get("http://127.0.0.1:55976/gTcAwDVx1l4=");
    data = json.decode(response.body);
    setState(() {
      userData = data["data"];
    });
    debugPrint(userData.toString());
  }
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Test"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: userData == null ? 0 : userData.length,
        itemBuilder: (BuildContext context, int index) {
         return Card(
           child: Row(
             children: <Widget> [

             ]
           ),
         );
        },
        )
    );
  }
}