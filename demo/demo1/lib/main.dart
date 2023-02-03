//write program navigator with 2 screens
import 'dart:async';
import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Stream<int?> _counter;

  @override
  void initState() {
    super.initState();
    _counter = counter();
  }

  Stream<int?> counter() async* {
    await Future.delayed(Duration(seconds: 4));
    yield 1;

    await Future.delayed(Duration(seconds: 1));
    yield 2;

    await Future.delayed(Duration(seconds: 1));
    yield 3;
    await Future.delayed(Duration(seconds: 1));
    yield 5;

    await Future.delayed(Duration(seconds: 4));
    yield 6;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilder"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter = counter();
                  });
                },
                child: Icon(Icons.refresh)),
            StreamBuilder<int?>(
              stream: _counter,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Text('Press button to start.');
                  case ConnectionState.waiting:
                    return Text('Awaiting result...');
                  case ConnectionState.active:
                    return Text('Result: ${snapshot.data}');
                  case ConnectionState.done:
                    return Text('Result: ${snapshot.data}' + '  done!');
                }
              },
            ),
            Container(
              //padding for button ElevatedButton near bottom of screen
              padding: const EdgeInsets.only(bottom: 20.0),

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepOrange),
                ),
                child: Text(
                  'FutureBuilder',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  late Future<int> numbers;

  Future<int> getData() async {
    final result =
        await Future.delayed(Duration(seconds: 2), () => Random().nextInt(100));
    return result;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numbers = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    numbers = getData();
                  });
                },
                child: Icon(Icons.refresh)),
          ),
          FutureBuilder<int>(
            future: numbers,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('Result: ${snapshot.data}');
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Text('Awaiting result...');
              } else if (snapshot.hasError) {
                final error = snapshot.error;
                return Text('Error: $error');
              }
              return CircularProgressIndicator();
            },
          ),
        ],
      )),
    );
  }
}
