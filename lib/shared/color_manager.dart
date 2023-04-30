import 'package:flutter/material.dart';

class ColorManager{
  static Color primaryLightColor = const Color(0xff6E2E02);
  static Color secondaryLightColor = const Color(0xffCC8648);
  static Color cardLightColor = const Color(0xff212121);
  static Color scaffoldBackLightColor = const Color(0xffF9FAFB);
  static Color bottomNavColorLight = const Color(0xffD9D9D9);
  static Color canvasLightColor = const Color(0xffF5F5F5);
  static Color dialogBackColorLight = const Color(0xffEBEBEB);
  static Color acceptedOrderColor = const Color(0xff1BBE52);
  static Color rejectedOrderColor = const Color(0xffCE2828);
  static Color waitingOrderColor = const Color(0xffE4E81B);
  static Color verticalDividerColorLight = const Color(0xffC9C9C9);
  static Color receiptItemsColorLight = const Color(0xff2B2B2B);
  static Color linkColor = const Color(0xffFF9500);
  static Color visaCardFieldHint = Color(0xffC0C0C0);
  static List<Color> primaryGradientLightColors = [
    primaryLightColor,
    secondaryLightColor
  ];
  static List<Color> primaryGradientLightColors2 = [
    Colors.transparent,
    Colors.transparent,
  ];
  static List<Color> primaryGradientLightColors3 = [
    Color(0xff121212).withOpacity(0.08),
    Colors.transparent,
  ];
  static List<Color> masterCardColor = [
    Color(0xff00014F),
    Color(0xff3A6073)
  ];
  static List<Color> visaColor = [
    Color(0xff650006),
    Color(0xff2D004D)
  ];
  static Gradient primaryGradientLight = LinearGradient(
      colors:primaryGradientLightColors
  );
  static Gradient primaryGradientLight2 = LinearGradient(
      colors:primaryGradientLightColors2
  );
  static Gradient primaryGradientLight3 = LinearGradient(
      colors:primaryGradientLightColors3
  );
  static Gradient visaGradient = LinearGradient(
      colors:visaColor
  );
  static Color floatingButtonShadowColorLight1 = Colors.black.withOpacity(0.16);
  static Color floatingButtonShadowColorLight2 = Colors.black.withOpacity(0.06);
  static Color floatingButtonShadowColorLight3 = Color(0xff121212).withOpacity(0.08);
  static Color favoriteButtonColor = Color(0xffA70808);
  static Color shadowLight1 = Color(0xff6E2E02).withOpacity(0.08);
  static Color shadowLight2 = Color(0xff837F7F).withOpacity(0.25);
  static Color shadowLight3 = Color(0xFFFFFF).withOpacity(0.25);
  static Color shadowLight4 = Color(0x101828).withOpacity(0.08);
   static Color shadowColor=Color(0xff12121214).withOpacity(0.08);
   static Color dividerColor=Color(0xff353535);
  static Color unselectedTabColor=Color(0xff9D9D9D);
  static Color shadowLight5 = Color(0xFFFFFF).withOpacity(1);
  static Color shadowLight6 = Color(0xff212121);
  static Color shadowLight7 = Color(0xffBDBDBD);
  static Color shadowLight8 = Color(0xfff5f5f5);
  static Color shadowLight9 = Color(0xff121212).withOpacity(0.08);
  static Color shadowLight10 = Color(0xffE81717);
  static Color shadowLight11 = Color(0xffCC8648);
  static Color shadowLight12 = Color(0xff212121).withOpacity(0.5);
  static Color shadowLight13 = Color(0xff000000).withOpacity(0.16);
  static Color shadowLight14 = Color(0xffEBEBEB);
  static Gradient masterCardGradient= LinearGradient(
      colors:masterCardColor
  );
  static Color receiptBackground=Color(0xffEBEBEB);
  static Color receipttextcolor=Color(0xff7E7E7E);
  static Color receiptname=Color(0xff2B2B2B);
  static Color receiptdividercolor=const Color(0xffC9C9C9);
  static Color radioBorderColor = const Color(0xffDEE5DE);
  static Color radioShippingColor = const Color(0xff909090);
}
