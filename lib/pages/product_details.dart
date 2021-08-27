import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/model/products.dart';
import 'package:shopping/widgets/drawer.dart';
import 'package:shopping/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({Key? key, required this.product})
      : assert(product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.creamColor,
      appBar: AppBar(),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "INR ${product.price}".text.bold.make(),
          ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyThemes.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: Text("Buy"))
              .w32(context)
        ],
      ).pOnly(right: 16).p32(),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                      tag: Key(product.id.toString()),
                      child: Image.network(product.image))
                  .h32(context),
            ),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    product.productName.text.xl4
                        .color(MyThemes.darkBluishColor)
                        .bold
                        .make(),
                    30.heightBox,
                    product.description.text.lg
                        .color(MyThemes.darkBluishColor)
                        .make(),
                    50.heightBox,
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
//      drawer: MyDrawer(),
    );
  }
}
