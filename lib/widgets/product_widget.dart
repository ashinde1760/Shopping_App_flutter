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
      child: Container(
        height: 110,
        child: Center(
          child: ListTile(
            onTap: () {
              print("${product.productName} pressed");
            },
            leading: Container(
              child: Image.network(
                product.image,
                width: 100,
                cacheHeight: 200,
              ),
            ),
            title: Text(
              product.productName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              "\INR ${product.price}",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
            subtitle: Container(
              child: ElevatedButton(onPressed: () {}, child: Text("Buy")),
            ),
          ),
        ),
      ),
    );
  }
}
