import 'package:flutter/material.dart';
import 'package:navi_router/models/counter.dart';
import 'package:navi_router/settings.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(ChangeNotifierProvider(
//     create: (context) => MySettings(),
//     child: MaterialApp(
//       home: MyApp(),
//     ),
//   ));
// }

// class MySettings extends ChangeNotifier {
//   String text = "ok";
//   Color color = Colors.red;

//   void changeText() {
//     if (text == 'ok') {
//       text = 'Hello';
//     } else {
//       text = 'ok';
//     }
//     notifyListeners();
//   }

//   void changeColor() {
//     if (color == Colors.red) {
//       color = Colors.blue;
//     } else {
//       color = Colors.red;
//     }
//     notifyListeners();
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<MySettings>(builder: (context, mySettings, child) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text("Provider demo"),
//           backgroundColor: mySettings.color,
//         ),
//         drawer: Drawer(
//           child: Center(
//               child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                   onPressed: () {
//                     mySettings.changeText();
//                     Navigator.pop(context);
//                   },
//                   child: Text('change text')),
//               ElevatedButton(
//                   onPressed: () {
//                     mySettings.changeColor();
//                     Navigator.pop(context);
//                   },
//                   child: Text('change color')),
//             ],
//           )),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                   onPressed: () {
//                     mySettings.changeText();
//                     // Navigator.pop(context);
//                   },
//                   child: Text('change text')),
//               Text("${mySettings.text}")
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => MySettings()),
      ChangeNotifierProvider(create: (_) => Couter()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: context.watch<MySettings>().isDark
            ? Brightness.dark
            : Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter provider'),
        actions: [
          Switch(
              value: context.watch<MySettings>().isDark,
              onChanged: (newValue) {
                Provider.of<MySettings>(context, listen: false)
                    .setBrightness(newValue);
              })
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("data"),
          Text(
            context.watch<Couter>().myValue.toString(),
            style: Theme.of(context).textTheme.headlineSmall,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            context.read<Couter>().add();
          }),
    );
  }
}
