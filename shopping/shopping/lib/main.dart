import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/cart_provider.dart';
import 'package:shopping/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shopping',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: ProductListScreen(),
          );
        },
      ),
    );
  }
}
