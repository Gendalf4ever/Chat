
import 'package:flutter/material.dart';
class Chat extends StatefulWidget {
  Chat();
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
    TextEditingController inputcontroller = new TextEditingController();
      String message;
    String nickname;
        @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: const Text("Chat"),
      ),
       body: Center(
child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         new Container(
              child: Align(alignment: Alignment.topCenter,
              child: new Container(
                alignment: Alignment.topRight,
                child: Text('$message'),
                )  
              ),
            ),
         new Container(
           child:Align(alignment: Alignment.bottomRight,
          child: new TextField(
             controller: inputcontroller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Message',
             // alignment: Alignment.bottomCenter
            ),
          ),
           )
         ),
        
          RaisedButton (
              child: Text("Send"), onPressed: (){
                setState(() {
                  message = inputcontroller.text;
                  inputcontroller.clear();
               }) ;     
              },
            ),
           
           // Text("$userName")
       ],
       )
       )
       );
  }
}


