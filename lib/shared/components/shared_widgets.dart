import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/form_fields/text_field.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';

LinearGradient appGradient = const LinearGradient(
  colors: [
    blue2,
    blue3,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

SizedBox freeV({double h = 20}) {
  return SizedBox(
    height: h,
  );
}

SizedBox freeH({double w = 20}) {
  return SizedBox(
    width: w,
  );
}

Widget latestTransactionItem({txt1, txt2, money}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration:
                  BoxDecoration(gradient: appGradient, shape: BoxShape.circle),
            ),
            freeH(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(txt1, style: getmedium(color: gry.withOpacity(.88))),
                Text(
                  txt2,
                  style: getlight(),
                ),
              ],
            ),
          ],
        ),
        Text(
          money,
          style: getlight(),
        ),
      ],
    ),
  );
}

Widget defaultButton({
  Function()? press,
  required String txtButton,
}) {
  return MaterialButton(
    onPressed: press,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          gradient: appGradient, borderRadius: BorderRadius.circular(4)),
      child: Text(
        txtButton,
        style: getmedium(
          weight: FontWeight.w400,
          color: white.withOpacity(.95),
        ),
      ),
    ),
  );
}

Widget accountFields({title, keyboard, hint, lines = 1}) {
  return SizedBox(
    width: 400,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: getmedium(color: gry.withOpacity(.92)),
        ),
        //freeV(h: 5),
        SizedBox(
          height: 48,
          child: InputTextField(
            readOnly: true,
            lines: lines,
            keyboardType: keyboard,
            hint: hint,
            dense: true,
          ),
        ),
        freeV(h: 10)
      ],
    ),
  );
}

AppBar appBars(context, txt) {
  return AppBar(
    elevation: 0,
    backgroundColor: blue3,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.keyboard_arrow_left_rounded,
        size: 30,
        color: white,
      ),
    ),
    centerTitle: true,
    title: Text(
      txt,
      style: getmedium(color: white.withOpacity(.95)),
    ),
    actions: [
      settings,
      freeH(w: 12),
    ],
  );
}
