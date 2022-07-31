import 'package:bankak_app/consts.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(context,'Account'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    'assets/images/p2.png',
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
              SizedBox(
                child: Column(
                  children: [
                    accountFields(
                        title: 'Your Full Name',
                        keyboard: TextInputType.name,
                        lines: 1,
                        hint: 'Karina Ebus'),
                    accountFields(
                        title: 'Bank Account',
                        lines: 1,
                        keyboard: TextInputType.number,
                        hint: '00 123 456'),
                    accountFields(
                        title: 'Your Email',
                        lines: 1,
                        keyboard: TextInputType.emailAddress,
                        hint: 'karina_ebus@gmail.com'),
                    accountFields(
                        title: 'Password',
                        lines: 1,
                        keyboard: TextInputType.visiblePassword,
                        hint: '***********'),
                    accountFields(
                        title: 'Phone Number',
                        lines: 1,
                        keyboard: TextInputType.number,
                        hint: '+44 556 245 43 003'),
                    accountFields(
                        title: 'Address',
                        lines: 3,
                        keyboard: TextInputType.text,
                        hint: '''Lorem ipsum 22nd street,
tincidunt ut laoreet
5N 27T-Lorem ipsum'''),
                  ],
                ),
              ),
              freeV(),
              button(() {}, 'Edit'),
              freeV(),
            ],
          ),
        ),
      ),
    );
  }
}
