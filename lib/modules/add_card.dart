import 'package:bankak_app/modules/transfere.dart';
import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/form_fields/text_field.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/images.dart';
import 'package:flutter/material.dart';

import '../shared/components/shared_widgets.dart';
import '../shared/resources/styles.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(context, 'Add Card'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            freeV(h: 10),
            //img
            Image.asset(img10),
            // freeV(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: SizedBox(
                child: Column(
                  children: [
                    accountFields(
                        title: 'Your name',
                        keyboard: TextInputType.text,
                        style: getregular(color: gry.withOpacity(.6)),
                        readOnly: false),
                    accountFields(
                      title: 'Card Number',
                      keyboard: TextInputType.number,
                      style: getregular(color: gry.withOpacity(.6)),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Expired Date',
                              style: getmedium(color: gry.withOpacity(.92)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 90,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
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
                                  Text('Day', style: getlight()),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: blue3,
                                  ),
                                ],
                              ),
                            ),
                            freeH(w: 6.3),
                            Container(
                              height: 50,
                              width: 90,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
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
                                    'Month',
                                    style: getlight(),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: blue3,
                                  ),
                                ],
                              ),
                            ),
                            freeH(w: 6.3),
                            Container(
                              height: 50,
                              width: 120,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
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
                                    'year',
                                    style: getlight(),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: blue3,
                                  ),
                                ],
                              ),
                            ),
                            freeH(w: 10),
                          ],
                        ),
                      ],
                    ),
                    accountFields(
                      title: 'Password',
                      secure: true,
                      keyboard: TextInputType.visiblePassword,
                      style: getregular(color: gry.withOpacity(.6)),
                    ),
                    Row(
                      children: [
                        Text(
                          'Phone Number',
                          style: getmedium(color: gry.withOpacity(.92)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 100,
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
                                countryCode,
                                style: const TextStyle(
                                    color: blue1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              ItemsInPopUp(
                                  context: context,
                                  list: countryCodePopUpMenuItems,
                                  press: (val) {
                                    setState(() {
                                      countryCode =
                                          countryCodePopUpMenuItems[val as int]
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
                              10 - //center space
                              100 - //img
                              35 * 2, //padding
                          child: InputTextField(
                            style: getregular(color: gry.withOpacity(.6)),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    freeV(h: 10),
                    Text(
                      '''* Credit card data is protected from hacking and your card is safe.''',
                      style: getlight(color: gry.withOpacity(.7)),
                    ),
                  ],
                ),
              ),
            ),
            freeV(),

            defaultButton(txtButton: 'Link Card'),
          ],
        ),
      ),
    );
  }
}
