import 'package:dio/dio.dart';

class AllCategoriesServices {
  final Dio dio;

  AllCategoriesServices({required this.dio});
  Future<List<dynamic>> getAllCategories() async {
    Response response =
        await dio.get('https://fakestoreapi.com/products/categories');
    List<dynamic> data = response.data;

    return data;
  }
}
