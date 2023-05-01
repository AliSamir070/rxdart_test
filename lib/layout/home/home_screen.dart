import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart_test/layout/home/cubit/home_cubit.dart';
import 'package:rxdart_test/shared/Collections.dart';
import 'package:rxdart_test/shared/meatitem_Component.dart';
import 'package:rxdart_test/shared/remote/repository/api_datasource.dart';

import 'cubit/home_state.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context)=>HomeCubit(ApiDataSource())..searchProducts(""),
        child: BlocConsumer<HomeCubit , HomeStates>(
            builder: (context , state){
              HomeCubit homeCubit = HomeCubit.get(context);
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                      decoration: InputDecoration(
                          hintText: "Search..."
                      ),
                      onChanged: (value){
                        homeCubit.searchProducts(value);
                      },
                    ),
                    SizedBox(height: 20,),
                    state is HomeSearchLoadingState
                        ?const Center(child: CircularProgressIndicator(),)
                        :state is HomeSearchErrorState
                        ?Center(child: Text("Error Occurred"),)
                        :state is HomeSearchSuccessfulState && homeCubit.products.isEmpty
                        ?Center(child: Text("No Products"),)
                        :Expanded(
                      child: ListView.separated(
                          itemBuilder: (context,index){
                            return MeatItem(
                                meatProduct: homeCubit.products[index],
                                addToCart: (){},
                                collection: Collection(
                                  name: "Cow",
                                  id: 1,
                                  image:"assets/images/cow.svg",
                                  image_after: "assets/images/cow-selected.svg"
                                ));
                          },
                          separatorBuilder: (context , index)=>SizedBox(height: 10,),
                          itemCount: homeCubit.products.length),
                    )
                  ],
                ),
              );
            },
            listener: (context , state){}
        ),
      ),
    );
  }
}
