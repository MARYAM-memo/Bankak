import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

BorderRadius radius = const BorderRadius.all(Radius.circular(6));
BorderSide side = const BorderSide(width: 2);

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    this.readOnly = false,
    this.keyboardType = TextInputType.text,
    this.hint,
    this.label,
    this.prefix,
    this.borderN = 10,
    this.lines = 1,
    this.secure = false,
    this.dense = false,
    this.controller,
    this.suffix,
    this.style,
  }) : super(key: key);
  final bool readOnly, secure, dense;
  final TextInputType keyboardType;
  final String? hint;
  final String? label;
  final Widget? prefix;
  final Widget? suffix;
  final double borderN;
  final TextStyle? style;
  final int? lines;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      style: style,
      keyboardType: keyboardType,
      maxLines: lines,
      obscureText: secure,
      onFieldSubmitted: (value) {
        if (kDebugMode) {
          print(value);
        }
      },
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          labelStyle: getmedium(
            color: gry,
          ),
          hintStyle: getregular(color: gry.withOpacity(.6)),
          prefixIcon: prefix,
          suffixIcon: suffix,
          isDense: dense,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(borderN))),
    );
  }
}
