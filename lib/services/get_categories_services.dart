import 'package:dio/dio.dart';
import 'package:store_app_tr2/models/products_modle.dart';

class GetCategoriesServices {
  final Dio dio;
  GetCategoriesServices({required this.dio});
  Future<List<ProductsModel>> getCategoriesProduct({required String categoryName}) async {
    Response response = await dio
        .get("https://fakestoreapi.com/products/category/$categoryName");
List<dynamic> data = response.data;
    List<ProductsModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(
        ProductsModel.fromjson(data[i]),
      );
    }
    return productsList;

    
  }
}
