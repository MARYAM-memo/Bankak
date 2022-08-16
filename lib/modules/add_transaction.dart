import 'package:bankak_app/modules/transfere.dart';
import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';

import '../shared/components/form_fields/text_field.dart';
import '../shared/resources/images.dart';

class AddTransacton extends StatefulWidget {
  const AddTransacton({Key? key}) : super(key: key);

  @override
  State<AddTransacton> createState() => _AddTransactonState();
}

class _AddTransactonState extends State<AddTransacton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(context, 'Add Transaction'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            freeV(h: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  img8,
                  width: 250,
                ),
                Image.asset(
                  img9,
                  width: 60,
                ),
              ],
            ),
            freeV(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: SizedBox(
                child: Column(
                  children: [
                    accountFields(
                        title: 'from: Your card Number',
                        keyboard: TextInputType.number,
                        style: getregular(color: gry.withOpacity(.6)),
                        readOnly: false),
                    accountFields(
                      title: 'to: Bank Account',
                      keyboard: TextInputType.none,
                      label: 'Select',
                      suffix: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: blue3,
                        size: 25,
                      ),
                      style: getregular(color: gry.withOpacity(.6)),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Amount',
                              style: getmedium(color: gry.withOpacity(.92)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    coin,
                                    style: const TextStyle(
                                        color: blue1,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  ItemsInPopUp(
                                      context: context,
                                      list: coinsPopUpMenuItems,
                                      press: (val) {
                                        setState(() {
                                          coin = coinsPopUpMenuItems[val as int]
                                              ['txt'] as String;
                                        });
                                      }),
                                ],
                              ),
                            ),
                            freeH(w: 10),
                            SizedBox(
                              height: 52,
                              width: MediaQuery.of(context).size.width -
                                  10 -//center space
                                  80 -//img
                                  35 * 2, //padding
                              child: InputTextField(
                                style: getregular(color: gry.withOpacity(.6)),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    freeV(h: 10),
                    SizedBox(
                      width: 400,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Message',
                                style: getmedium(color: gry.withOpacity(.92)),
                              ),
                            ],
                          ),
                          InputTextField(
                            style: getregular(color: gry.withOpacity(.6)),
                            lines: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            freeV(h: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                defaultButton(txtButton: 'Send'),
                Text(
                  'Or',
                  style: getlight(color: gry.withOpacity(.6)),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: blue2, width: 1.5),
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      'Cancel',
                      style: getmedium(
                        weight: FontWeight.w400,
                        color: blue2,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
