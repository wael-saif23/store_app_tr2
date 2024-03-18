import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class Api {
  final Dio dio;

  Api({required this.dio});
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearar $token'});
    }
    Response response = await dio.get(url, options: Options(headers: headers));
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'there is porblem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url, @required dynamic data, String? token}) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearar $token'});
    }

    Response response =
        await dio.post(url, data: data, options: Options(headers: headers));
    if (response.data == 200) {
      Map<String, dynamic> data = response.data;
      return data;
    } else {
      throw Exception(
          'There is a problem with status code ${response.statusMessage}with body ${response.data}');
    }
  }

  Future<dynamic> put(
      {required String url, @required dynamic data, String? token}) async {
    Map<String, dynamic> headers = {
      'Content-Type': 'application/x-www-form-urlencoded'
    };
    if (token != null) {
      headers.addAll({'Authorization': 'Bearar $token'});
    }
    print('url = $url & data = $data & token = $token');
    Response response =
        await dio.put(url, data: data, options: Options(headers: headers));
    if (response.data == 200) {
      Map<String, dynamic> data = response.data;
      print('data = $data');
      return data;
    } else {
      throw Exception(
          'There is a problem with status code ${response.statusMessage}with body ${response.data}');
    }
  }
}
