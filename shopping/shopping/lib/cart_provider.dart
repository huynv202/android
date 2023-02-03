import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  double _total = 0.0;
  double get total => _total;

  void _setPrefItem() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('counter') ?? 0;
    _total = prefs.getDouble('total') ?? 0.0;
    notifyListeners();
  }

  void addCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('counter') ?? 0;
    _counter++;
    prefs.setInt('counter', _counter);
    notifyListeners();
  }

  void removeCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('counter') ?? 0;
    _counter--;
    prefs.setInt('counter', _counter);
    notifyListeners();
  }

  int getCounter() {
    _setPrefItem();
    return _counter;
  }

  void addTotal(double price) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _total = prefs.getDouble('total') ?? 0.0;
    _total += price;
    prefs.setDouble('total', _total);
    notifyListeners();
  }

  void removeTotal(double price) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _total = prefs.getDouble('total') ?? 0.0;
    _total -= price;
    prefs.setDouble('total', _total);
    notifyListeners();
  }

  double getTotal() {
    _setPrefItem();
    return _total;
  }
}
