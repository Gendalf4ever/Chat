/*
import 'package:web_socket_channel/io.dart';
doConnect(url, fullname) async {
    chatsocket = await new IOWebSocketChannel.connect(url, pingInterval: new Duration(seconds: 5));
    ChatServerConnect csc =  new ChatServerConnect('connect', fullname);
    var json = jsonCodec.encode(csc);
    chatsocket.sink.add(json);
    _getPrefs();
    isConnected = true;
    syncMessages();
    chatlisten(chatsocket);
  }

  */