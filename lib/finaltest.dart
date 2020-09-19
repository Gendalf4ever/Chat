import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TestHttp(),
  )
);

class TestHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TestHttpState();
}

class TestHttpState extends State<TestHttp>{

httpGet() async {
  try{
var response = await  http.post('http://pm.tada.team', body: {'websocket': 'ws', 'messagetext': 'message'}); //this is server
  print("Response status: ${response.statusCode}"); //return status
 print("Response body: ${response.body.toString()}"); //return html code
  }catch (error ){
  print("Error: $error");
  } 
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Http Test'),      
      ),
      body: Center(
        child: FlatButton(
          onPressed: httpGet, 
          child: Text('test')
        ),
      ),
     
    );
  }
}
