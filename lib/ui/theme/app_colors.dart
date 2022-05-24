import 'package:flutter/material.dart';

class AppColors {
  /// app colors
  static const Color primary = Color(0xFF2DBC77);
  static const Color secondary = Color(0xFFFFBF54);

  static const Color iconColor = Color.fromRGBO(4, 4, 21, 0.4);
  static const Color textColor = Color(0xFF1E1E2D);
  static const Color textBlack = Color(0xFF040415);
  static const Color textGrey = Color.fromRGBO(4, 4, 21, 0.5);
  static const Color highlightedTextColor = Color(0xFFFF0000);
  static const Color buttonColor = Color(0xFFEFEFEF);

  /// normal color
  static const Color black = Colors.black;
  static const Color white = Color(0xFFFFFFFF);
  static const Color blue = Color(0xff1473E6);
  static const Color faceBookColor = Color(0xFF3B5998);
  static const Color googleColor = Color(0xFFEA4235);
  static const Color grey = Color(0xFF707070);
  static const Color greyLite = Color(0xFFEFEFEF);
  static const Color ratingColor = Color(0xFFFFD54F);

  static const Color green = Color(0xFF6FB900);
  static const Color greenLite = Color(0xFFA6CC2B);
  static const Color greenDark = Color(0xFF009247);
  static const Color yellow = Color(0xFFFFAA00);
  static const Color red = Color(0xFFC1272D);
  static const Color redLite = Color(0xFFFF0000);

  static getColorFromColorCode(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
