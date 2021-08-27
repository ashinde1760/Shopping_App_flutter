import 'package:flutter/material.dart';
import 'package:shopping/model/products.dart';
import 'package:shopping/pages/product_details.dart';
import 'package:shopping/widgets/home_widgets/product_image.dart';
import 'package:shopping/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: ProductModel.products.length,
        itemBuilder: (context, index) {
          final data = ProductModel.products[index];
          return InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsPage(product: data),
                    ),
                  ),
              child: ProductData(data: data));
        }).py16();
  }
}

class ProductData extends StatelessWidget {
  final Product data;

  const ProductData({Key? key, required this.data})
      : assert(data != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(data.id.toString()),
            child: ProductImage(image: data.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            data.productName.text.lg
                .color(MyThemes.darkBluishColor)
                .bold
                .xl2
                .make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "INR ${data.price}".text.bold.make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyThemes.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: Text("Buy"))
              ],
            ).pOnly(right: 16)
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}
