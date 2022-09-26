import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTheme {
  // Dark theme
  static final coffeeTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColor.appBlack,
    fontFamily: 'LatoRegular',
    primarySwatch: AppColor.darkThemeColors,
    scaffoldBackgroundColor: AppColor.appBlack,
    toggleButtonsTheme: ToggleButtonsThemeData(
      selectedColor: AppColor.whiteColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      iconColor: AppColor.lightGreyColor,
      focusColor: AppColor.lightGreyColor,
      hintStyle: TextStyle(color: AppColor.lightGreyColor),
      prefixIconColor: AppColor.greyColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      filled: true,
      fillColor: AppColor.lightBlackColor,
      suffixIconColor: AppColor.lightGreyColor,
      errorStyle: const TextStyle(
        fontSize: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.2),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: AppColor.whiteColor),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        fontSize: 18,
        color: AppColor.whiteColor,
        fontFamily: 'LatoRegular',
      ),
      bodyText1: TextStyle(
        fontSize: 18,
        color: AppColor.whiteColor,
        fontFamily: 'LatoRegular',
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColor.blueColor,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.whiteColor,
      splashColor: AppColor.whiteColor,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColor.appBlack,
        foregroundColor: AppColor.appColor,
        elevation: 0.2,
        textStyle: const TextStyle(
          fontSize: 18,
          fontFamily: 'LatoRegular',
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide.none,
        ),
        shadowColor: AppColor.appColor,
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColor.whiteColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.appColor,
        elevation: 0.0,
        padding: const EdgeInsets.all(8),
        foregroundColor: AppColor.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyle(
          fontSize: 18,
          fontFamily: 'LatoRegular',
          color: AppColor.whiteColor,
        ),
      ),
    ),
    cardTheme: CardTheme(
      shadowColor: Colors.grey[400],
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: AppColor.whiteColor,
      ),
      titleTextStyle: const TextStyle(
        fontFamily: 'LatoRegular',
        fontSize: 20,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColor.appBlack,
      elevation: 0,
      modalBackgroundColor: AppColor.appBlack,
      modalElevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 5,
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      selectedItemColor: AppColor.whiteColor,
      unselectedItemColor: AppColor.appBlack,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.appBlack,
      selectedIconTheme: IconThemeData(
        color: AppColor.whiteColor,
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColor.appBlack,
        size: 25,
      ),
    ),
  );
}
