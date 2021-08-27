import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shopping/model/products.dart';
import 'package:shopping/widgets/drawer.dart';
import 'package:shopping/widgets/home_widgets/product_list.dart';
import 'package:shopping/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

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
    await Future.delayed(Duration(seconds: 2));
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
      backgroundColor: MyThemes.creamColor,
      appBar: AppBar(
        title: Text("Shopping Portal"),
      ),
      body: Container(
        child: Column(
          children: [
            if (ProductModel.products != null &&
                ProductModel.products.isNotEmpty)
              ProductList().expand()
            else
              CircularProgressIndicator().centered().expand(),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
