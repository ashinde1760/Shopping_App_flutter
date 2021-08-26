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
  static List<Product> products = [
    Product(
        id: 1,
        productName: "Mobile",
        description: "Lenovo k8 Note",
        image:
            "https://5.imimg.com/data5/RP/QP/GLADMIN-52197454/lenovo-k8-note-mobile-phone-500x500.png",
        price: 15000,
        quantity: 1)
  ];
}
