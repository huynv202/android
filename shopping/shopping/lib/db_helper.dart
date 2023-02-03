import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:shopping/cart_model.dart';
import 'package:path/path.dart';

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }

    _db = await initDatabase();
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = documentDirectory.path + 'shopping.db';
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  _onCreate(
    Database db,
    int version,
  ) {
    return db.execute(
      'CREATE TABLE Cart(id INTEGER PRIMARY KEY, productId VARCHAR UNIQUE, initialPrice INTEGER, productPrice INTEGER,quabtity INTEGER, unitTag VARCHAR, image VARCHAR)',
    );
  }

  Future<int> save(Cart cart) async {
    var dbClient = await db;
    int res = await dbClient!.insert('Cart', cart.toJson());
    return res;
  }

  Future<Cart> insert(Cart cart) async {
    var dbClient = await db;
    cart.id = await dbClient!.insert('Cart', cart.toJson());
    return cart;
  }
}
