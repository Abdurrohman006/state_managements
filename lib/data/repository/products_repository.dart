import 'package:state_managements/data/model/product_model/product_model.dart';
import 'package:state_managements/service/api_service/api_service.dart';

class ProductsRepository {
  Future<List<dynamic>> getAllProducts() async =>
      await ApiService().getAllProducts();

  Future<ProductModel> getSingleProduct(int id) async =>
      await ApiService().getSingleProduct(id);
}
