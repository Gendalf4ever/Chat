import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
class Chat extends StatefulWidget {
  final WebSocketChannel channel = IOWebSocketChannel.connect('wss://nane.tada.team/ws?username={username}');
 String value;
  Chat({Key key, @required this.value}): super (key: key);
  @override
  _ChatState createState() => _ChatState(value);
  
}

class _ChatState extends State<Chat> {
  Future<String> getData() async {
  
  http.Response response = await http.get(
Uri.encodeFull("http://pm.tada.team"),
headers: {
  "Accept": "application/json"
}
  );
  print(response.body);
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
                    //padding: EdgeInsets.symmetric(horizontal: 24, vertical: 506),
                     child: TextField(  
                  controller: inputcontroller,
                  decoration: InputDecoration(                   
                   border: OutlineInputBorder(),
                    hintText: 'Message',
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                   )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 50.0,
                  color: Colors.red,   
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
         padding: const EdgeInsets.all(0.5),
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