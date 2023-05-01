import 'package:rxdart_test/model/type_model.dart';

import 'category_model.dart';

class GroupedFilterModel {
  CategoryModel category;
  int min;
  int max;
  TypeModel type;

  GroupedFilterModel({
    required this.category,
    required this.min,
    required this.max,
    required this.type,
  });
}
