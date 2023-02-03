import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';
import 'package:shopping/cart_model.dart';
import 'package:shopping/cart_provider.dart';
import 'package:shopping/db_helper.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  DBHelper dbHelper = DBHelper();

  List<String> productName = [
    'Mango',
    'Orange',
    'Grapes',
    'Banana',
    'Chery',
    'Peach',
    'Mixed Fruit Basket',
  ];
  List<String> productUnit = [
    'KG',
    'Dozen',
    'KG',
    'Dozen',
    'KG',
    'KG',
    'KG',
  ];
  List<int> productPrice = [10, 20, 30, 40, 50, 60, 70];
  List<String> productImage = [
    'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
    'https://image.shutterstock.com/image-photo/orange-fruit-slices-leaves-isolated-600w-1386912362.jpg',
    'https://image.shutterstock.com/image-photo/green-grape-leaves-isolated-on-600w-533487490.jpg',
    'https://media.istockphoto.com/photos/banana-picture-id1184345169?s=612x612',
    'https://media.istockphoto.com/photos/cherry-trio-with-stem-and-leaf-picture-id157428769?s=612x612',
    'https://media.istockphoto.com/photos/single-whole-peach-fruit-with-leaf-and-slice-isolated-on-white-picture-id1151868959?s=612x612',
    'https://media.istockphoto.com/photos/fruit-background-picture-id529664572?s=612x612',
  ];
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping cart'),
        centerTitle: true,
        actions: [
          Center(
            child: badges.Badge(
              badgeContent: Text('1'),
              badgeAnimation: badges.BadgeAnimation.rotation(
                animationDuration: Duration(milliseconds: 300),
                colorChangeAnimationCurve: Curves.linear,
              ),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.square,
                badgeColor: Colors.blue,
                padding: EdgeInsets.all(5),
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderGradient: badges.BadgeGradient.linear(
                    colors: [Colors.white, Colors.white]),
                badgeGradient: badges.BadgeGradient.linear(
                  colors: [Colors.orange, Colors.deepOrange],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                elevation: 0,
              ),
              child: IconButton(
                icon: const Icon(Icons.shopping_bag_outlined),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
          itemCount: productName.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network(
                          productImage[index],
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                productName[index].toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5),
                              Text(
                                productUnit[index].toString() +
                                    "  " +
                                    r"$" +
                                    productPrice[index].toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    dbHelper.insert(Cart(
                                        id: index,
                                        productId: index.toString(),
                                        productName:
                                            productName[index].toString(),
                                        productUnit:
                                            productUnit[index].toString(),
                                        initialPrice:
                                            productPrice[index].toString(),
                                        productPrice:
                                            productPrice[index].toString(),
                                        quantity: 1.toString(),
                                        unitTag: productUnit[index].toString(),
                                        image: productImage[index].toString()));
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Add to cart',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ))
      ]),
    );
  }
}
