import 'package:dio/dio.dart';
import 'package:store_app_tr2/helper/api.dart';

class AllCategoriesServices {
  final Dio dio;

  AllCategoriesServices({required this.dio});
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api(dio: Dio())
        .get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
