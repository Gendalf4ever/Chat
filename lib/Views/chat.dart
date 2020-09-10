
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
           child: new TextField(
             controller: inputcontroller,
            
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Message'
            ),
          ),
         ),
        
          RaisedButton (
              child: Text("Send"), onPressed: (){
                setState(() {
                  message = inputcontroller.text;
                 
               });     
              },
            ),
            
           // Text("$userName")
       ],
       )
       )
       );
  }
}


