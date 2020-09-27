import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Chat extends StatefulWidget {
 String value;
  Chat({Key key, @required this.value}): super (key: key);
  @override
  _ChatState createState() => _ChatState(value);
  
}

class _ChatState extends State<Chat> {
  Future<String> getData() async {
  http.Response response = await http.get(
Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
headers: {
  "Accept": "application/json"
}
  );
  print(response.body);
}
  httpGet() async {
  try{
var response = await  http.post('http://pm.tada.team', body: {'websocket': 'ws', 'messagetext': 'message'}); //this is server
  print("Response status: ${response.statusCode}"); //return status
 print("Response body: ${response.body}"); //return html code
  }catch (error ){
  print("Error: $error");
  } 
}
  String value;
    final inputcontroller = TextEditingController();
  _ChatState(this.value);
  List<String> messageList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
      child: Column (
        children: <Widget>[
          Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                    //padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    //padding: EdgeInsets.symmetric(horizontal: 24, vertical: 106),
                     child: TextField(  
                  controller: inputcontroller,
                  decoration: InputDecoration(                   
                   border: OutlineInputBorder(),
                    hintText: 'Message',
                  ),
                  style: TextStyle(fontSize: 20),
                  //textAlign: TextAlign.end,
                ),
                   )
               //)
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text('Send',
                  style: TextStyle(fontSize: 20)
                ),
                onPressed: (){
                    setState(() {
                       messageList.add(value + ':' + inputcontroller.text);
                    });                 
                    inputcontroller.text = '';
                  getData();
                  }
              ),
              ),
            ],
          ),
          
          ),
          Expanded(
            child: getMessageList()
            )
        ],
      )
    ) 
    );
  }
     
    
  ListView getMessageList(){
  List<Widget> listWidget = [];
  for (String message in messageList){
    listWidget.add(ListTile(
     title: Container(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(
           message,
            style: TextStyle(fontSize: 20)
         ),
       ),
     )
    )
    ); 
}
return ListView(
  children:listWidget,
);
}

}