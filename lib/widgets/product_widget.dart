import 'package:flutter/material.dart';
import 'package:shopping/model/products.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({Key? key, required this.product})
      : assert(product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${product.productName} pressed");
        },
        leading: Image.network(product.image),
        title: Text(product.productName),
        subtitle: Text(product.description),
        trailing: Text(
          "\INR ${product.price}",
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
