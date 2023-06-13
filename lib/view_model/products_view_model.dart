import 'package:flutter/material.dart';
import 'package:state_managements/data/repository/products_repository.dart';

class ProductsViewModel extends ChangeNotifier {
  ProductsViewModel() {
    getAllProducts();
  }

  List products = [];
  bool isLoading = false;

  void getAllProducts() async {
    changeLoadingState();
    products = await ProductsRepository().getAllProducts();
    changeLoadingState();
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
