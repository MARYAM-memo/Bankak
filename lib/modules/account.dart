import 'package:bankak_app/shared/components/form_fields/text_field.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/images.dart';
import 'package:flutter/material.dart';

import '../shared/resources/styles.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(context, 'Account'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    img5,
                    height: 120,
                  ),
                  const Positioned(
                    right: 40,
                    bottom: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: blue1,
                      child: Icon(
                        Icons.add_a_photo_rounded,
                        color: white,
                      ),
                    ),
                  )
                ],
              ),
              freeV(h: 10),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    accountFields(
                        title: 'Your Full Name',
                        keyboard: TextInputType.name,
                        hint: 'Karina Ebus'),
                    accountFields(
                        title: 'Bank Account',
                        keyboard: TextInputType.number,
                        hint: '00 123 456'),
                    accountFields(
                        title: 'Your Email',
                        keyboard: TextInputType.emailAddress,
                        hint: 'karina_ebus@gmail.com'),
                    accountFields(
                        title: 'Password',
                        keyboard: TextInputType.visiblePassword,
                        hint: '***********'),
                    accountFields(
                        title: 'Phone Number',
                        keyboard: TextInputType.number,
                        hint: '+44 556 245 43 003'),
                    SizedBox(
                      width: 400,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Address',
                                style: getmedium(color: gry.withOpacity(.92)),
                              ),
                            ],
                          ),
                          const InputTextField(
                            hint:
                                '''Lorem ipsum 22nd street, tincidunt ut laoreet 5N 27T-Lorem ipsum''',
                            lines: 4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              freeV(),
              defaultButton(txtButton: 'Edit'),
              freeV(),
            ],
          ),
        ),
      ),
    );
  }
}
