import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants.dart';

class DioHelper{
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
        baseUrl: Constants.baseUrl2,
        receiveDataWhenStatusError: true,
        receiveTimeout: Duration(milliseconds: 30000),
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        }));
    dio?.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
    ));
  }

  static void addHeaders({String? token}) {
    dio?.options.headers = token == null?{}:{"Authorization": "JWT $token"};
  }
  static Future<Response>? getSearchedProducts(
      {String searchText = '',
        int collectionId = 1,
        bool isAlive = false,
        int min = 0,
        int max = 10000000, required offset}) {
    DioHelper.addHeaders();
    return dio?.get(Constants.filterProductsUrl, queryParameters: {
      'search': searchText,
      'collection_id': collectionId,
      'unit_price__gt': min,
      'unit_price__lt': max,
      'is_alive': isAlive,
      'limit': Constants.limit,
      'offset': offset
    });
  }
}