import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final Completer<WebViewController> _webcontroller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Test"),
    ),
    body:  WebView(
                  initialUrl: "http://google.com",
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: (WebViewController webcontroller){
                    _webcontroller.complete(webcontroller);    
                  },
                ),
                floatingActionButton: FutureBuilder<WebViewController>(
                 future: _webcontroller.future,
                 builder: (BuildContext context,
                 AsyncSnapshot<WebViewController> controller){
                   if (controller.hasData) {
                     return FloatingActionButton(
                       child: Icon(Icons.ac_unit), onPressed: (){
                         controller.data.loadUrl("http://google.com");
                       },
                     );
                   }
                 },
                ),
    );
     
  }
}