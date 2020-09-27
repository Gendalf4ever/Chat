import 'package:http/http.dart' as http;


class HttpService{
Future<String> getData() async {
  http.Response response = await http.get(
Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
headers: {
  "Accept": "application/json"
}
  );
  print(response.body);
}
}