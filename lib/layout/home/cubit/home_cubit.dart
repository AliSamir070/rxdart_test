import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart_test/layout/home/cubit/home_state.dart';
import 'package:rxdart_test/shared/error_handler.dart';
import 'package:rxdart_test/shared/remote/repository/repository.dart';

import '../../../model/category_model.dart';
import '../../../model/grouped_filter_model.dart';
import '../../../model/type_model.dart';
import '../../../shared/ProductList.dart';
import '../../../shared/constants.dart';
import '../../../shared/internet_checker.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit(this.repository):super(HomeInitialState()){
    resultStream = searchController
        .debounceTime(Duration(milliseconds: 2000))
        .switchMap((value) => null);
  }

  static HomeCubit get(context)=>BlocProvider.of(context);

  MyRepository? repository;
  List<MeatShopProduct> products = [];
  BehaviorSubject<String> searchController = BehaviorSubject();
  late Stream<List<MeatShopProduct>> resultStream;
  
  Future searchProducts(String query)async{
    await InternetChecker.checkConnectivity();
    if(InternetChecker.connectionStatus != ConnectivityResult.none){
      emit(HomeSearchLoadingState());
      return repository?.getSearchedProducts(
          searchText: query,
          collectionId: _groupedFilter.category.collectionId,
          isAlive: isProductAlive,
          min: _groupedFilter.min,
          max: groupedFilter.max,
          offset: 0
      ).then((value) {
          value.fold((left) {
            products = left.results??[];
            emit(HomeSearchSuccessfulState());
          }, (right) {
            emit(HomeSearchErrorState(right));
          });
      });
    }else{
      emit(HomeSearchErrorState(DataSource.NO_INTERNET_CONNECTION.getFailure()));
    }
  }
  // Grouped filters values from the bottom sheet: Category, min, max, type
  final GroupedFilterModel _groupedFilter = GroupedFilterModel(
    category: CategoryModel(
        name: '', collectionId: 1, selectedImage: '', unSelectedImage: ''),
    min: Constants.sliderMin,
    max: Constants.sliderMax,
    type: TypeModel(name: 'Alive'),
  );

  GroupedFilterModel get groupedFilter {
    return _groupedFilter;
  }

  void chooseCategory(
      {required CategoryModel category}) {
    _groupedFilter.category = category;
  }

  void choosePriceRange({required int min, required int max}) {
    _groupedFilter.min = min;
    _groupedFilter.max = max;
  }

  void chooseProductType({required TypeModel typeModel}) {
    _groupedFilter.type = typeModel;
  }

  bool get isProductAlive {
    return _groupedFilter.type.name == 'Alive';
  }
}