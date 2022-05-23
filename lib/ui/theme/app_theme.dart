import 'package:Softcent/ui/dimension/dimension.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:Softcent/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme.light().copyWith(
    primary: AppColors.primary,
  ),
  primaryColor: AppColors.primary,
  primaryColorDark: AppColors.primary,
  primaryColorLight: AppColors.primary,
  scaffoldBackgroundColor: AppColors.white,
  inputDecorationTheme: InputDecorationTheme(
    border: const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.greyLite),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.greyLite),
    ),
    disabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.greyLite),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.textColor),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.red),
    ),
    alignLabelWithHint: true,
    labelStyle: GoogleFonts.dmSans(
      fontSize: Dimension.textSize,
      color: AppColors.white,
    ),
    hintStyle: GoogleFonts.dmSans(
      color: AppColors.white,
      fontSize: Dimension.textSize,
    ),
    contentPadding: const EdgeInsets.only(
      left: Dimension.padding,
      right: Dimension.padding,
    ),
    suffixIconColor: AppColors.grey,
    floatingLabelStyle: GoogleFonts.dmSans(
      fontSize: Dimension.textSize,
      color: AppColors.textColor,
    ),
  ),
  appBarTheme: AppBarTheme(
    color: AppColors.primary,
    titleTextStyle: GoogleFonts.dmSans(
      color: AppColors.white,
      fontSize: Dimension.textSize,
      fontWeight: Dimension.textBold,
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.white,
  ),
  cardTheme: const CardTheme(shadowColor: Colors.white70),
  textTheme: TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    headline5: headline5,
    headline6: headline6,
    bodyText1: bodyText1,
    bodyText2: bodyText2,
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all(AppColors.primary),
    thumbColor: MaterialStateProperty.all(AppColors.primary),
  ),
  dividerTheme: const DividerThemeData(
    space: 0,
    indent: 0,
    endIndent: 0,
    thickness: 1,
  ),
  fontFamily: AppConstant.fontDMSans,
);
