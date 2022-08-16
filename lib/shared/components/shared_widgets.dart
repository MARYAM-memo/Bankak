import 'package:bankak_app/modules/add_card.dart';
import 'package:bankak_app/shared/components/form_fields/text_field.dart';
import 'package:bankak_app/shared/components/shared_functions.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';
import '../../modules/add_transaction.dart';
import '../../modules/payment.dart';
import '../../modules/qr_code.dart';
import '../../modules/transfere.dart';
import 'consts.dart';

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

Widget accountFields(
    {title,
    keyboard,
    hint,
    lines = 1,
    readOnly = true,
    secure = false,
    Widget? suffix,
    TextStyle? style,
    String? label}) {
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
            label: label,
            style: style,
            suffix: suffix,
            readOnly: readOnly,
            secure: secure,
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

AppBar appBars(context, txt, {color = blue3}) {
  return AppBar(
    elevation: 0,
    backgroundColor: color,
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
      const SettingsIcon(),
      freeH(w: 12),
    ],
  );
}

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        icon: const Icon(
          Icons.settings,
          size: 25,
          color: white,
        ),
        onSelected: (value) {
          if (value == 0) {
            navigatorPush(context: context, neededPage: const QRCode());
          }
          if (value == 1) {
            navigatorPush(context: context, neededPage: const Payments());
          }
          if (value == 2) {
            navigatorPush(context: context, neededPage: const AddTransacton());
          }
          if (value == 3) {
            navigatorPush(context: context, neededPage: const AddCard());
          }
        },
        itemBuilder: (context) => settingsPopUpMenuItems
            .map((e) => PopupMenuItem(
                value: e["id"],
                child: Row(
                  children: [
                    Text(
                      e["txt"] as String,
                      style: getmedium(),
                    )
                  ],
                )))
            .toList());
  }
}

class ItemsInPopUp extends StatelessWidget {
  const ItemsInPopUp(
      {Key? key,
      required this.context,
      required this.list,
      required this.press})
      : super(key: key);
  final BuildContext context;
  final List<Map<String, Object>> list;
  final Function(Object val) press;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: blue3,
        ),
        onSelected: press,
        itemBuilder: (context) => list
            .map((e) => PopupMenuItem(
                value: e["id"],
                child: Row(
                  children: [
                    Text(
                      e["txt"] as String,
                      style: getmedium(),
                    )
                  ],
                )))
            .toList());
  }
}

Widget paymentItems(
    {required String title, required Color color, required IconData icon}) {
  return Column(
    children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: [color, color.withOpacity(.7)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Center(
            child: Icon(
          icon,
          color: white,
          size: 36,
        )),
      ),
      freeV(h: 5),
      Text(
        title,
        style: getmedium(color: gry.withOpacity(.88)),
      )
    ],
  );
}
Widget transactionsHeader(color, txt) {
  return Container(
    height: 60,
    width: 170,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color, color.withOpacity(.7)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    child: Center(
      child: Text(
        txt,
        style: getmedium(color: white, size: 20)
            .copyWith(textBaseline: TextBaseline.alphabetic),
      ),
    ),
  );
}

Widget activeTransactionHeader(txt) {
  return transactionsHeader(blue1, txt);
}

Widget nonActiveTransactionHeader(txt) {
  return transactionsHeader(gry.withOpacity(.5), txt);
}
