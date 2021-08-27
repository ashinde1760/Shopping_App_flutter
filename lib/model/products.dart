class Product {
  final String productName, description, image;
  final num id, price, quantity;

  Product(
      {required this.id,
      required this.productName,
      required this.description,
      required this.image,
      required this.price,
      required this.quantity});

  factory Product.fromMap(Map<dynamic, dynamic> map) {
    return Product(
        id: map["id"],
        productName: map["productName"],
        description: map["description"],
        image: map["image"],
        price: map["price"],
        quantity: map["quantity"]);
  }

  toMap() => {
        "id": id,
        "productName": productName,
        "description": description,
        "image": image,
        "price": price,
        "quantity": quantity,
      };
}

class ProductModel {
  static List<Product> products = [];
}
