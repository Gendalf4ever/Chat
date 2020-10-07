import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
class WebSocketTest extends StatefulWidget {
  final WebSocketChannel channel = IOWebSocketChannel.connect('wss://nane.tada.team/ws?username={username}');
  @override
  _WebSocketTestState createState() => _WebSocketTestState();
}

class _WebSocketTestState extends State<WebSocketTest> {
  final inputController = TextEditingController();
  List<String> messageList = [];
  @override
  
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Expanded(
                child: TextField(
                  controller: inputController,
                  style:TextStyle(fontSize: 22),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Message"
                  ),
                ),
                ),
                Padding (
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Send",
                    style: TextStyle(fontSize: 20),
                    ), 
                    onPressed: (){
                      if (inputController.text.isNotEmpty){
                        messageList.add(inputController.text);
                        inputController.text = '';
                      }
                    },
                    ),
                ),
            ],
            ),
          )
        ],
      ),
    );
  }
}  