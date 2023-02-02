import 'package:flutter/material.dart';
import 'package:ui_shoppe_flutter/src/models/main_menu_model.dart';

class MainMenuViewModel{
  List<MainMenuModel> getMainMenu(){
    return [
      MainMenuModel(title: "Map", image: "", color: Colors.red),
      MainMenuModel(title: "Cook", image: "", color: Colors.red),
      MainMenuModel(title: "Shop", image: "", color: Colors.red),
      MainMenuModel(title: "Mail", image: "", color: Colors.red),
      MainMenuModel(title: "Mall", image: "", color: Colors.red),
      MainMenuModel(title: "Free ship", image: "", color: Colors.red),
      MainMenuModel(title: "Mart", image: "", color: Colors.red),
      MainMenuModel(title: "Cash", image: "", color: Colors.red),
      MainMenuModel(title: "Games", image: "", color: Colors.red),
      MainMenuModel(title: "Online", image: "", color: Colors.red),
   ];
  }
}