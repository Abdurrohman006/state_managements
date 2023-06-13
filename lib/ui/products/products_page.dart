import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/view_model/products_view_model.dart';

import 'widgets/product_item.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var myProvider = context.read<ProductViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products page"),
      ),
      body: Consumer<ProductsViewModel>(
        builder: (context, myProvider, child) {
          if (myProvider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (myProvider.products.isNotEmpty) {
            return GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 200,
                childAspectRatio: 3 / 3,
                crossAxisSpacing: 0,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              itemCount: myProvider.products.length,
              itemBuilder: (context, index) =>
                  ProductItem(product: myProvider.products[index]),
            );
          } else {
            return const Text("Data yo'q");
          }
        },
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => context.read<ProductsViewModel>().getAllProducts(),
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
