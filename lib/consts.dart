import 'package:flutter/material.dart';

const white = Color(0xFFF8F6F6);
const blue1 = Color(0xFF2196F3);
const blue2 = Color(0xFF040F30);
const blue3 = Color(0xFF031241);
const gry = Color(0xFF292626);

LinearGradient grad = const LinearGradient(
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
              decoration: BoxDecoration(gradient: grad, shape: BoxShape.circle),
            ),
            freeH(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt1,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: gry,
                  ),
                ),
                Text(
                  txt2,
                  style: const TextStyle(color: gry, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        Text(
          money,
          style: const TextStyle(color: gry, fontSize: 18),
        ),
      ],
    ),
  );
}

Widget button(press, txt) {
  return MaterialButton(
    onPressed: press,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration:
          BoxDecoration(gradient: grad, borderRadius: BorderRadius.circular(8)),
      child: Text(
        txt,
        style: const TextStyle(color: white, fontSize: 18),
      ),
    ),
  );
}

Widget accountFields({title, keyboard, hint, lines}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(color: blue2, fontSize: 20),
      ),
      freeV(h: 5),
      TextFormField(
        readOnly: true,
        maxLines: lines,
        keyboardType: keyboard,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      freeV(h: 10)
    ],
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
          style: const TextStyle(color: white, fontSize: 22),
        ),
        actions: [
          const Icon(
            Icons.settings,
            color: white,
            size: 22,
          ),
          freeH(w: 12),
        ],
  );
}
