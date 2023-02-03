class Cart {
  late final int? id;
  late final String productId;
  late final String productName;
  late final String productUnit;
  late final String initialPrice;
  late final String productPrice;
  late final String quantity;
  late final String unitTag;
  late final String image;

  Cart({
    required this.id,
    required this.productId,
    required this.productName,
    required this.productUnit,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.unitTag,
    required this.image,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      productId: json['productId'],
      productName: json['productName'],
      productUnit: json['productUnit'],
      initialPrice: json['initialPrice'],
      productPrice: json['productPrice'],
      quantity: json['quantity'],
      unitTag: json['unitTag'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'productUnit': productUnit,
      'initialPrice': initialPrice,
      'productPrice': productPrice,
      'quantity': quantity,
      'unitTag': unitTag,
      'image': image,
    };
  }
}
