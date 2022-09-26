import 'package:coffee_finder/theme/app_color.dart';
import 'package:flutter/material.dart';

class Styles {
  // Gradient color
  static LinearGradient cardGradient = LinearGradient(
    colors: [
      AppColor.lightBlackColor,
      AppColor.appBlack,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const TextStyle headline16 = TextStyle(
    fontSize: 16,
    fontFamily: 'LatoItalic',
  );

  static const TextStyle bold12 = TextStyle(
    fontSize: 12,
    fontFamily: 'LatoBold',
  );

  static const TextStyle bold14 = TextStyle(
    fontSize: 14,
    fontFamily: 'LatoBold',
  );

  static const TextStyle bold16 = TextStyle(
    fontSize: 16,
    fontFamily: 'LatoBold',
  );

  static const TextStyle bold18 = TextStyle(
    fontSize: 18,
    fontFamily: 'LatoBold',
  );

  static const TextStyle bold20 = TextStyle(
    fontSize: 20,
    fontFamily: 'LatoBold',
  );

  static const TextStyle bold22 = TextStyle(
    fontFamily: 'LatoBold',
    fontSize: 22,
  );

  // Bold color style
  static TextStyle boldColor14 = TextStyle(
    fontSize: 14,
    color: AppColor.appColor,
    fontFamily: 'LatoBold',
  );

  static TextStyle boldColor16 = TextStyle(
    fontSize: 16,
    color: AppColor.appColor,
    fontFamily: 'LatoBold',
  );

  static TextStyle boldColor18 = TextStyle(
    fontSize: 18,
    color: AppColor.appColor,
    fontFamily: 'LatoBold',
  );

  static TextStyle boldColor22 = TextStyle(
    fontFamily: 'LatoBold',
    color: AppColor.appColor,
    fontSize: 22,
  );

  // Regular fonts

  static const TextStyle text12 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 12,
  );

  static const TextStyle text14 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 14,
  );

  static const TextStyle text16 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 16,
  );

  static const TextStyle text18 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 18,
  );
  static const TextStyle text20 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 20,
  );
  static const TextStyle text22 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 22,
  );

  static const TextStyle text25 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 25,
  );

  // white text

  static const TextStyle whiteText12 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 12,
    color: Colors.white,
  );
  static const TextStyle whiteText14 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 14,
    color: Colors.white,
  );
  static const TextStyle whiteText16 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 16,
    color: Colors.white,
  );
  static const TextStyle whiteText18 = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 18,
    color: Colors.white,
  );
  static const TextStyle boldWhite20 = TextStyle(
    fontSize: 20,
    fontFamily: 'LatoBold',
    color: Colors.white,
  );

  static const TextStyle availableCardText = TextStyle(
    fontFamily: 'LatoRegular',
    fontSize: 12,
  );

  // Regular light color test style
  static TextStyle textColor14 = TextStyle(
    fontFamily: 'LatoRegular',
    color: AppColor.blueColor,
    fontSize: 14,
  );

  static TextStyle textColor16 = TextStyle(
    fontFamily: 'LatoRegular',
    color: AppColor.blueColor,
    fontSize: 16,
  );

  static TextStyle textColor18 = TextStyle(
    fontFamily: 'LatoRegular',
    color: AppColor.blueColor,
    fontSize: 18,
  );

  // Regular app color test style
  static TextStyle textAppColor14 = TextStyle(
    fontFamily: 'LatoRegular',
    color: AppColor.appColor,
    fontSize: 14,
  );

  static TextStyle textAppColor16 = TextStyle(
    fontFamily: 'LatoRegular',
    color: AppColor.appColor,
    fontSize: 16,
  );

  static TextStyle textAppColor18 = TextStyle(
    fontFamily: 'LatoRegular',
    color: AppColor.appColor,
    fontSize: 18,
  );
}
