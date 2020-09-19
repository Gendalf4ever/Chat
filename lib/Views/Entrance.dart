import 'package:flutter/material.dart';
import 'chat.dart';
class Entrance extends StatefulWidget {
  Entrance();

  @override
  State<StatefulWidget> createState() {
    return _EntranceState();
  }
}

class _EntranceState extends State<Entrance> {
  TextEditingController inputcontroller = new TextEditingController();
  String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page"),
      ),
       body: Container(
         alignment: Alignment.center,
         child:Column(
         crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Text("Welcome to the Chat! Please, enter your Nickname: "), 
         TextField(
           controller: inputcontroller,
           decoration: InputDecoration(
             border: InputBorder.none,
             hintText: 'Nickname:'
           ),
         ), 
         new Container(child: RaisedButton(
           child: Text('Save Nickname'), 
         //onPressed:() => Navigator.pushNamed(context, '/chat') , 
         onPressed: (){
           setState(() {
             // userName = inputcontroller.text;
             if (inputcontroller.text == '') {
              userName = "LazyUser";
             }   else {
                userName = inputcontroller.text;
             }  
            Navigator.pushNamed(context, '/chat') ;
             } // setState
             );
         },
       ),
       ),
         
   RaisedButton(
     child: Text("Enter"),
     
     onPressed:() => Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=> Chat(value : userName),
     )
     ) ,
     
   )

   
       ]
       )
       )
       
    );
  
  
  }

  
}