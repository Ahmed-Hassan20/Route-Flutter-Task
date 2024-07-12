import 'package:flutter/material.dart';

class MyTheme{
  static const primaryColor = Color(0xff004182);
  static const darkPrimaryColor = Color(0xff004182);
  static const whiteColor = Color(0xffffffff);
  static const blackColor = Color(0xFF000000);
  static Color greyColor = Color(0xff808080);
  static Color blueGreyColor = Color(0xFF607D8B);
  static Color yellowColor = Color(0xFFFFEB3B);
  static Color blueColor = Color(0xff06004F);



  static ThemeData mainTheme = ThemeData(
      fontFamily: "Poppins",
    useMaterial3: true,
      primaryColor:primaryColor,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: whiteColor,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: whiteColor,
        ),
      ));
}