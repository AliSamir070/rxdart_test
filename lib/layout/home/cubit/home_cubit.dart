import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart_test/layout/home/cubit/home_state.dart';
import 'package:rxdart_test/shared/remote/repository/repository.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit(this.repository):super(HomeInitialState());

  static HomeCubit get(context)=>BlocProvider.of(context);

  MyRepository? repository;
}