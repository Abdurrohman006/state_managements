import 'package:dio/dio.dart';
import 'package:state_managements/2-lesson/data/model/product_model/product_model.dart';

class ApiService {
  Future getAllProducts() async {
    Dio dio = Dio();
    print("_________________________response ketdi");
    Response response = await dio.get("https://fakestoreapi.com/products");

    if (response.statusCode == 200) {
      List products =
          response.data.map((e) => ProductModel.fromJson(e)).toList();
      return products;
    }
  }
}
