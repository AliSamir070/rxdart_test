import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'package:intl/intl.dart';
import 'package:rxdart_test/shared/strings_manager.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'Collections.dart';
import 'ProductList.dart';
import 'color_manager.dart';

class MeatItem extends StatelessWidget {
  MeatShopProduct meatProduct;
  Collection collection;
  Function() addToCart;

  MeatItem(
      {required this.meatProduct,
      required this.addToCart,
      required this.collection});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          meatProduct.image == null
              ? Container(
                  width: 93,
                  height: 93,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: GradientText(
                    colors: ColorManager.primaryGradientLightColors,
                    Stringsmanager.noImage,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                )
              : CachedNetworkImage(
                  imageUrl: meatProduct.image!,
                  errorWidget: (context, url, error) => Container(
                    width: 93,
                    height: 93,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: GradientText(
                      colors: ColorManager.primaryGradientLightColors,
                      Stringsmanager.noImage,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  imageBuilder: (context, provider) => Container(
                    width: 93,
                    height: 93,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: provider, fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  placeholder: (context, url) => Container(
                      width: 93,
                      height: 93,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                          width: 93,
                          height: 93,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Theme.of(context).primaryColor,
                            ),
                          ))),
                ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: SizedBox(
              height: 93,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(meatProduct.productName!,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(fontWeight: FontWeight.w600)),
                          Padding(
                            padding: EdgeInsets.only(top: 6.0),
                            child: Text(
                              '${meatProduct.quantity}Kg',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Text(
                      meatProduct.description!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: ColorManager.unselectedTabColor,
                          ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    NumberFormat.currency(
                                            symbol: "\$",
                                            decimalDigits: 0,
                                            locale: "en_US")
                                        .format(meatProduct.deposite!),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .secondaryHeaderColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text('-',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .secondaryHeaderColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    NumberFormat.currency(
                                            symbol: "\$",
                                            decimalDigits: 0,
                                            locale: "en_US")
                                        .format(meatProduct.unitPrice!),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .secondaryHeaderColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                      ),
                      InkWell(
                        onTap: addToCart,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: ColorManager.primaryGradientLight
                          ),
                          child: SvgPicture.asset(
                              "assets/images/cart.svg",
                              width: 16,
                              height: 16,
                              colorFilter:ColorFilter.mode(Theme.of(context).floatingActionButtonTheme.foregroundColor!, BlendMode.srcIn)
                          ),
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MeatItemLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 93,
          height: 93,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(15)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 15,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(15)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
