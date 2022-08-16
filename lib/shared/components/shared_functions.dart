import 'package:bankak_app/shared/resources/colors.dart';
import 'package:flutter/material.dart';
import '../resources/styles.dart';

Future navigatorPush(
    {required BuildContext context, required Widget neededPage}) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => neededPage));
}

