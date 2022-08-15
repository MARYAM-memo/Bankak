import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';
ThemeData getThemes() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      titleTextStyle: getmedium(color: white),
    ),
    iconTheme: const IconThemeData(size: 24, color: white),
    scaffoldBackgroundColor: white,
    primaryColor: blue2,
    fontFamily: "TAJAWAL",
  );
}
