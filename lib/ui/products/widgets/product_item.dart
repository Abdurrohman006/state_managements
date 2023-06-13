import 'package:flutter/material.dart';
import 'package:state_managements/data/model/product_model/product_model.dart';
import 'package:state_managements/ui/descriptions/description_page.dart';

// ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  ProductModel product;
  ProductItem({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DescriptionPage(product: product),
            ));
      },
      child: ListTile(
        title: Image.network(product.image.toString(), height: 129),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.title.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.w700, color: Colors.black)),
            Text("${product.price.toString()} USD ",
                style: const TextStyle(
                    fontWeight: FontWeight.w700, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
