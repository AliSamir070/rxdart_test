import 'package:either_dart/either.dart';

import '../../ProductList.dart';

abstract class MyRepository{
  Future<Either<ProductList, String>> getSearchedProducts(
      {
        required String searchText,
        int collectionId = 0,
        bool isAlive = false,
        int min = 0,
        int max = 10000000,
        required int offset});
}