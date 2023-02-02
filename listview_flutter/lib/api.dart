import 'package:http/http.dart' as http;

Future<void> callApi() async{
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  var response = await http.get(url);
  print((response.body).toString());
}
