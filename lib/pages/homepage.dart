import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shopping/model/products.dart';
import 'package:shopping/widgets/drawer.dart';

import 'package:flutter/material.dart';
import 'package:shopping/widgets/product_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String url = "http://localhost:8080/allProducts";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final jsonData = await rootBundle.loadString("assets/files/products.json");
    final decodeData = jsonDecode(jsonData);
    var productData = decodeData["products"];

    ProductModel.products = List.from(productData)
        .map<Product>((product) => Product.fromMap(product))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Portal"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: ProductModel.products.length,
          itemBuilder: (context, index) {
            return ProductWidget(
              product: ProductModel.products[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
