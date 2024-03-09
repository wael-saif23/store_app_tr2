import 'package:dio/dio.dart';
import 'package:store_app_tr2/helper/api.dart';
import 'package:store_app_tr2/models/products_modle.dart';

class GetCategoriesServices {
  final Dio dio;
  GetCategoriesServices({required this.dio});
  Future<List<ProductsModel>> getCategoriesProduct(
      {required String categoryName}) async {
    List<dynamic> data = await Api(dio: Dio())
        .get(url: "https://fakestoreapi.com/products/category/$categoryName");

    List<ProductsModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(
        ProductsModel.fromjson(data[i]),
      );
    }
    return productsList;
  }
}
