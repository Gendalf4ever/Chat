import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;
class Chat extends StatefulWidget {
 String value;
  Chat({Key key, @required this.value}): super (key: key);
   WebSocketChannel channel = IOWebSocketChannel.connect('wss://pm.tada.team/');
  @override
  _ChatState createState() => _ChatState(value);
}

class _ChatState extends State<Chat> {
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
                     child: TextField(  
                  controller: inputcontroller,
                  decoration: InputDecoration(
                    
                   border: OutlineInputBorder(),
                    hintText: 'Message',
                  ),
                  style: TextStyle(fontSize: 20),
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
                //  if (inputcontroller.text.isNotEmpty){
                 //   print(inputcontroller.text);
                    setState(() {

                       messageList.add(value + ':' + inputcontroller.text);
                    });                 
                    //inputcontroller.text = '';
                  }
              //  },
              ),
              )
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
            style: TextStyle(fontSize: 22)
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