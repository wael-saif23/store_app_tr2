import 'package:dio/dio.dart';
import 'package:store_app_tr2/helper/api.dart';
import 'package:store_app_tr2/models/products_modle.dart';

class AllProductsServices {
  final Dio dio;

  AllProductsServices({required this.dio});
  Future<List<ProductsModel>> getAllProducts() async {
    List<dynamic> data =
        await Api(dio: Dio()).get(url: "https://fakestoreapi.com/products");

    List<ProductsModel> allProductsList = [];
    for (var i = 0; i < data.length; i++) {
      allProductsList.add(
        ProductsModel.fromjson(data[i]),
      );
    }
    return allProductsList;
  }
}
