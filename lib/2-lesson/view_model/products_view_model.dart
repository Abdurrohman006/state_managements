import 'package:flutter/material.dart';
import 'package:state_managements/2-lesson/service/api_service/api_service.dart';

class ProductViewModel extends ChangeNotifier {
  List products = [];
  bool isLoading = false;

  void getAllProducts() async {
    changeLoadingState();
    products = await ApiService().getAllProducts();
    changeLoadingState();
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
