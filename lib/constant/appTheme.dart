import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colorConst.dart';

class Themes {
  // light theme
  static final lightTheme = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Color(0xFFEEEEEE))),
    ),
    scaffoldBackgroundColor: AppColors.lightThemeBackgroundColor,
    iconTheme: const IconThemeData(color: AppColors.lightThemeIconColor),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightThemeBackgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.lightThemeIconColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          textStyle: MaterialStateProperty.all(const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300)),
          animationDuration: const Duration(milliseconds: 800),
          shadowColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.focused)) {
              return const RoundedRectangleBorder();
            }
            return const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            );
          }),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            AppColors.lightThemeBtnColor,
          )),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      // secondary: AppColors.darkGrey,
      // onSecondary: AppColors.spaceCadet,
      // background: Colors.white,
    ),
  );

  // dark theme

  static final darkTheme = ThemeData(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Color(0xFFEEEEEE))),
      ),
      scaffoldBackgroundColor: AppColors.darkThemeBackgroundColor,
      primaryColor: AppColors.darkThemeprimaryColor,
      iconTheme: const IconThemeData(color: AppColors.darkThemeIconColor),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkThemeBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColors.darkThemeIconColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(BorderSide.strokeAlignOutside),
            textStyle: MaterialStateProperty.all(const TextStyle(
                color: AppColors.darkThemeTextPrimaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w300)),
            animationDuration: const Duration(milliseconds: 800),
            shadowColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.hovered) ||
                  states.contains(MaterialState.focused)) {
                return const RoundedRectangleBorder();
              }
              return const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              );
            }),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              AppColors.darkThemeExperienceDesktopBackground,
            )),
      ),
      colorScheme: const ColorScheme.dark(
          primary: AppColors.darkThemeBackgroundColor,
          onPrimary: AppColors.darkThemeTextPrimaryColor
          // secondary: AppColors.spaceCadet,
          // onSecondary: AppColors.spaceCadet,
          // background: Colors.black,
          ));
}
