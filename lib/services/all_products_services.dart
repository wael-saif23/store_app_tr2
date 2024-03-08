import 'package:dio/dio.dart';
import 'package:store_app_tr2/models/products_modle.dart';

class AllProductsServices {
  final Dio dio;

  AllProductsServices({required this.dio});
  Future<List<ProductsModel>> getAllProducts() async {
    Response response = await dio.get("https://fakestoreapi.com/products");
    List<dynamic> data = response.data;
    List<ProductsModel> allProductsList = [];
    for (var i = 0; i < data.length; i++) {
      allProductsList.add(
        ProductsModel.fromjson(data[i]),
      );
    }
    return allProductsList;
  }
}
