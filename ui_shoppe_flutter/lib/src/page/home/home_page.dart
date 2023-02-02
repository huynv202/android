import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_shoppe_flutter/src/page/home/widgets/banner_slider.dart';
import 'package:ui_shoppe_flutter/src/page/home/widgets/header.dart';
import 'package:ui_shoppe_flutter/src/page/home/widgets/main_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _scrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Stack(children: [
        SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
               BannerSlider(),
               MainMenu(),
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.red,
                child: Text("xxxx"),
                height: 1000,
                width: double.infinity,
              ),
            ],
          ),
        ),
        Header(_scrollController),
      ]),
    );
  }
}
