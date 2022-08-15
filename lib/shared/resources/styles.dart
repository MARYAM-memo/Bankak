import 'package:flutter/material.dart';
import 'colors.dart';

TextStyle getTextSTyle(color, size, weight) {
  return TextStyle(
      fontSize: size, color: color, fontWeight: weight, fontFamily: "KANIT");
}

TextStyle getmedium(
    {Color color = gry,
    double size = 18.0,
    FontWeight weight = FontWeight.w500}) {
  return getTextSTyle(color, size, weight);
}

TextStyle getregular(
    {Color color = gry,
    double size = 16.0,
    FontWeight weight = FontWeight.w400}) {
  return getTextSTyle(color, size, weight);
}

TextStyle getlight(
    {Color color = gry,
    double size = 14.0,
    FontWeight weight = FontWeight.w300}) {
  return getTextSTyle(color, size, weight);
}
