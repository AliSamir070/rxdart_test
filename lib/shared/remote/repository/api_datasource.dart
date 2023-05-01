import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:rxdart_test/shared/ProductList.dart';
import 'package:rxdart_test/shared/remote/repository/repository.dart';

import '../../error_handler.dart';
import '../../error_responsecode.dart';
import '../dio_helper.dart';

class ApiDataSource extends MyRepository{
  @override
  Future<Either<ProductList, String>> getSearchedProducts({required String searchText,int collectionId = 0, bool isAlive = false, int min = 0, int max = 10000000, required int offset}) async{
    try {
      Response? response = await DioHelper.getSearchedProducts(
          searchText: searchText,
          collectionId: collectionId,
          isAlive: isAlive,
          min: min,
          max: max,
          offset: offset);
      if (response?.statusCode == 200) {
        ProductList products = ProductList.fromJson(response?.data);
        return Left(products);
      } else {
        return Right(ErrorResponseCode.CheckError(response?.statusCode));
      }
    } catch (error) {
      return Right(ErrorHandler.handle(error).failure);
    }
  }

}