import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart_test/layout/home/cubit/home_cubit.dart';
import 'package:rxdart_test/shared/Collections.dart';
import 'package:rxdart_test/shared/ProductList.dart';
import 'package:rxdart_test/shared/meatitem_Component.dart';
import 'package:rxdart_test/shared/remote/repository/api_datasource.dart';

import 'cubit/home_state.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context)=>HomeCubit(ApiDataSource()),
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
                        print("OnChanged");
                        homeCubit.searchController.add(value);
                      },
                    ),
                    SizedBox(height: 20,),
                    state is HomeSearchLoadingState
                        ?Expanded(child: const Center(child: CircularProgressIndicator(),))
                        :state is HomeSearchErrorState
                        ?Expanded(child: Center(child: Text("Error Occurred"),))
                        :state is HomeSearchSuccessfulState && homeCubit.products.isEmpty
                        ?Expanded(child: Center(child: Text("No Products"),))
                        :Expanded(
                      child: StreamBuilder<List<MeatShopProduct>>(
                        stream: homeCubit.resultStream.asBroadcastStream(),
                        builder: (context , snapshot){
                          if(snapshot.hasData){
                            return ListView.separated(
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
                                itemCount: homeCubit.products.length);
                          }else if(snapshot.hasError){
                            return const Center(child: Text("Error Occurred"),);
                          }
                          return ListView.separated(
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
                              itemCount: homeCubit.products.length);
                        },
                      ),
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
