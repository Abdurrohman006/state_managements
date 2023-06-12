import 'package:flutter/material.dart';
import 'package:state_managements/2-lesson/data/model/product_model/product_model.dart';

// ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  ProductModel product;
  ProductItem({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: ListTile(
        title: Text(product.title.toString()),
        subtitle: Image.network(product.image.toString(), height: 60),
      ),
    );
  }
}
