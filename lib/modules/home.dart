import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/images.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'transfere.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      drawer: const Drawer(),
      appBar: AppBar(elevation: 0, backgroundColor: blue2,
          //leading: const Icon(Icons.menu),
          actions: [SettingsIcon(), freeH(w: 12)]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top design
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: appGradient,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //user's info enter to account page.
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AccountPage()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            img4,
                            height: 140,
                          ),
                          SizedBox(
                            child: Column(
                              children: [
                                Text(
                                  'Your Name',
                                  style: getmedium(
                                      size: 23,
                                      color: white,
                                      weight: FontWeight.w600),
                                ),
                                Text('your_email@gmail.com',
                                    style: getregular(
                                        color: white.withOpacity(.7))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //balance card
                    Container(
                      margin: const EdgeInsets.only(
                          left: 40, right: 40, bottom: 10, top: 20),
                      height: 140,
                      width: 300,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'BALANCE',
                            style: TextStyle(
                                color: Color(0xFF2196F3),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 2.2),
                          ),
                          Text(
                            '\$ 4,500.00',
                            style: TextStyle(
                              color: blue2.withOpacity(.9),
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          freeV(h: 10),
                          defaultButton(
                            txtButton: 'Transfer',
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Transfer()));
                            },
                          ),
                        ],
                      ),
                    ),
                    freeV()
                  ],
                )),
            //bottom design
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  freeV(),
                  const Text(
                    'LATEST TRANSACTIONS',
                    style: TextStyle(
                        color: blue1,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.2),
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        freeV(),
                        latestTransactionItem(
                            txt1: 'Lorem Ipsum Company',
                            txt2: 'Recieved payment',
                            money: "\$2,030.80"),
                        freeV(h: 10),
                        latestTransactionItem(
                            txt1: 'Auctor Elit Ltd',
                            txt2: 'Transfer money',
                            money: "-\$450.00"),
                        freeV(h: 10),
                        latestTransactionItem(
                            txt1: 'Lectus sit Amet est',
                            txt2: 'Gas & electicity payments',
                            money: "-\$259.00"),
                        freeV(h: 10),
                        latestTransactionItem(
                            txt1: 'Congue QuisQue',
                            txt2: 'Withdraw money',
                            money: "-\$1,500.00"),
                      ],
                    ),
                  ),
                  freeV(h: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'show more',
                        style: TextStyle(
                          color: blue1,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_double_arrow_right_rounded,
                        color: blue1,
                      ),
                      freeH()
                    ],
                  ),
                  freeV(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
