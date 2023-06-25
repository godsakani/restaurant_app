import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'font_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
//main colors of the app
    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.primary3Color,
    primaryColorDark: ColorManager.blackColor,
    disabledColor: ColorManager.greyWhiteColor,
//colorScheme: ColorScheme(brightness: brightness, primary: primary, onPrimary: onPrimary, secondary: secondary, onSecondary: onSecondary, error: error, onError: onError, background: background, onBackground: onBackground, surface: surface, onSurface: onSurface)
//card view theme
    cardTheme: CardTheme(
      color: ColorManager.whiteColor,
      shadowColor: ColorManager.greyWhiteColor,
      elevation: AppSize.s4,
    ),
//ripple color
    splashColor: ColorManager.primary3Color,
//App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primaryColor,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primary3Color,
      titleTextStyle: getRegularStyle(
        color: ColorManager.whiteColor,
        fontSize: FontSize.s16,
      ),
    ),

//Button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.greyColor,
      buttonColor: ColorManager.primaryColor,
      splashColor: ColorManager.primary3Color,
    ),
//elevation button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.whiteColor),
          backgroundColor: ColorManager.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12))),
    ),
//Text theme
    textTheme: TextTheme(
      headlineMedium: getSemiBoldStyle(
          color: ColorManager.blackColor, fontSize: FontSize.s16),
      titleMedium: getMediumStyle(
          color: ColorManager.greyWhiteColor, fontSize: FontSize.s14),
      bodyMedium: getRegularStyle(color: ColorManager.greyColor),
      bodySmall: getRegularStyle(color: ColorManager.greyColor),
    ),
//input decoration theme
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        helperStyle: getRegularStyle(color: ColorManager.greyColor),
        labelStyle: getMediumStyle(color: ColorManager.blackColor),
        errorStyle: getRegularStyle(color: ColorManager.errorColor),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.greyColor, width: AppSize.s3),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primaryColor, width: AppSize.s3),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.errorColor, width: AppSize.s3),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primaryColor, width: AppSize.s3),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        )),
  );
}
