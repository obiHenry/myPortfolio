import 'package:flutter/material.dart';
import 'package:henryportfolio/utils/services.dart';

import '../constant/colorConst.dart';

class ScreenUiHelper {
  TextStyle? headline1;
  // TextStyle? title;
  // TextStyle? body;
  TextStyle? buttonStyle;

  double? headlineSize;
  double? titleSize;
  double? bodySize;

  TextStyle headline(BuildContext context) {
    headline1 = TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.darkThemeTextPrimaryColor,
      fontSize: AppScreenSizes.isSmallScreen(context) ? 26 : 32,
      decoration: TextDecoration.none,
      // fontFamily: StringConstants.titleFont
    );

    return headline1!;
  }

  TextStyle title(BuildContext context) {
    return TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: AppScreenSizes.isSmallScreen(context)
            ? 20
            : AppScreenSizes.isMediumScreen(context)
                ? 24
                : 26,
        color: AppColors.darkThemeTextPrimaryColor,
        decoration: TextDecoration.none,
        wordSpacing: 1.5
        // fontFamily: StringConstants.titleFont
        );
  }

  TextStyle body(BuildContext context) {
    return TextStyle(
        color: AppColors.darkThemeTextPrimaryColor,
        fontWeight: FontWeight.w200,
        fontSize: AppScreenSizes.isSmallScreen(context) ? 16 : 18,
        decoration: TextDecoration.none,
        wordSpacing: 3.5
        // fontFamily: StringConstants.fontName
        );
  }

  TextStyle headlineNormal(BuildContext context) {
    return TextStyle(
      color: AppColors.darkThemeTextPrimaryColor,
      fontWeight: FontWeight.w300,
      fontSize: AppScreenSizes.isSmallScreen(context) ? 26 : 32,
      decoration: TextDecoration.none,
      // fontFamily: StringConstants.fontName
    );
  }

  EdgeInsets padding({BuildContext? context, double? top, double? bottom}) {
    return EdgeInsets.only(
        left: AppScreenSizes.isSmallScreen(context!)
            ? 20.0
            : AppScreenSizes.isMediumScreen(context)
                ? 20.0
                : 45.0,
        right: 10.0,
        top: top ?? 0.01,
        bottom: bottom ?? 0.01);
  }

  IconButton iconButton({icon, url, isHovered}) {
    return IconButton(
      icon: Icon(
        icon,
        color: isHovered ? Colors.black : AppColors.darkThemeprimaryColor,
      ),
      onPressed: () => Services().urlLauncher(url),
    );
  }

  // title = TextStyle(
  //     fontWeight: FontWeight.w600,
  //     fontSize: titleSize,
  //     color: AppColors.darkThemeTextPrimaryColor,
  //     decoration: TextDecoration.none,
  //     fontFamily: StringConstants.titleFont);
  // buttonStyle = TextStyle(
  //     fontFamily: StringConstants.titleFont,
  //     decoration: TextDecoration.none,
  //     fontWeight: FontWeight.bold,
  //     color: AppColors.darkThemeTextPrimaryColor,
  //     fontSize: bodySize);

  // body = TextStyle(
  //     color: textSecondaryColor,
  //     fontWeight: FontWeight.w400,
  //     fontSize: bodySize,
  //     decoration: TextDecoration.none,
  //     fontFamily: StringConstants.fontName);
  // }
}

class AppScreenSizes {
  AppScreenSizes._();

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }
}
