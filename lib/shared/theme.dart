import 'package:flutter/material.dart';

import 'color_manager.dart';


class MyTheme {
  static ThemeData lightTheme = ThemeData(
      dividerColor:   ColorManager.dividerColor,
      primaryColor: ColorManager.primaryLightColor,
      secondaryHeaderColor: ColorManager.secondaryLightColor,
      shadowColor: ColorManager.shadowColor,
      fontFamily: 'Poppins',
      cardColor: ColorManager.cardLightColor,
      scaffoldBackgroundColor: ColorManager.scaffoldBackLightColor,
      canvasColor: ColorManager.dialogBackColorLight,
      dialogBackgroundColor: ColorManager.dialogBackColorLight,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white
        )
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.bottomNavColorLight,
        unselectedItemColor: ColorManager.cardLightColor,
        unselectedLabelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: ColorManager.cardLightColor
        )
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 17,
            color: ColorManager.cardLightColor,
            fontWeight: FontWeight.w400
        )
      ),
      iconTheme: IconThemeData(
        color: ColorManager.cardLightColor,
        size: 25,
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: ColorManager.cardLightColor
        ),
        labelMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: ColorManager.primaryLightColor),
        labelSmall: TextStyle(
            fontSize: 18,
            color: ColorManager.cardLightColor,
            fontWeight: FontWeight.w400),
        displaySmall: TextStyle(
            fontSize: 14,
            color: ColorManager.cardLightColor,
            fontWeight: FontWeight.w400),
        displayMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white
        ),
        bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: ColorManager.primaryLightColor
        ),
        bodySmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: ColorManager.cardLightColor
        ),
        titleSmall: TextStyle(
            color: ColorManager.receiptItemsColorLight,
            fontSize: 15,
            fontWeight: FontWeight.w500
        ),
        bodyLarge: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: ColorManager.linkColor,
            decorationColor: ColorManager.linkColor,
            decoration: TextDecoration.underline
        ),
        titleMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: ColorManager.shadowLight5,
        ),
        headlineSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: ColorManager.shadowLight7,
        ),
         labelLarge: TextStyle(color: ColorManager.receipttextcolor,fontSize: 16,fontWeight: FontWeight.w500),
        titleLarge: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: ColorManager.cardLightColor)
      ),

    // change circular progress indicator color
    colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primaryLightColor,
    primary: ColorManager.secondaryLightColor),
  );

  static ThemeData darkTheme = ThemeData();
}
