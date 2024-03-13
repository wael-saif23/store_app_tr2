import 'package:dio/dio.dart';
import 'package:store_app_tr2/helper/api.dart';
import 'package:store_app_tr2/models/products_modle.dart';

class AddProductServices {
  final Dio dio;

  AddProductServices({required this.dio});
  Future<ProductsModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api(dio: dio).post(
      url: 'https://fakestoreapi.com/products',
      data: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );
    return ProductsModel.fromjson(data);
  }
}
