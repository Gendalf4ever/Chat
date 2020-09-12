import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Websocket extends StatefulWidget {
  Websocket({Key key}) : super(key: key);
final WebSocketChannel channel = IOWebSocketChannel.connect('wss://pm.tada.team/');
  @override
  _WebsocketState createState() => _WebsocketState();
}

class _WebsocketState extends State<Websocket> {
  final inputcontroller = TextEditingController();
  List<String> messageList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column (
        children: <Widget>[
          Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: inputcontroller,
                  decoration: InputDecoration(
                   border: OutlineInputBorder(),
                    hintText: 'Message'
                  ),
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text('Send',
                  style: TextStyle(fontSize: 20)
                ),
                onPressed: (){
                  if (inputcontroller.text.isNotEmpty){
                    print(inputcontroller.text);
                    setState(() {
                       messageList.add(inputcontroller.text);
                    });                 
                    inputcontroller.text = '';
                  }
                },
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