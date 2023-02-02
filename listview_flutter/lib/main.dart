import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:listview_flutter/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showUserToListView(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//show user to listview
class showUserToListView extends StatefulWidget {
  const showUserToListView({Key? key}) : super(key: key);

  @override
  State<showUserToListView> createState() => _showUserToListViewState();
}

class _showUserToListViewState extends State<showUserToListView> {
  Future<List<user>> getUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    List mapData = jsonDecode(response.body);
    print(mapData);
    List<user> users = mapData.map((e) => user.fromJson(e)).toList();
    return users;
  }

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: FutureBuilder<List<user>>(
        future: getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].username!),
                  subtitle: Text(snapshot.data![index].email!),
                  dense: false,
                  hoverColor: Colors.amber,
                  textColor: Colors.black,
                  visualDensity: null,
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
