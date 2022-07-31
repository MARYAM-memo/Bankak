import 'package:bankak_app/screens/account.dart';
import 'package:bankak_app/screens/transfere.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(elevation: 0, backgroundColor: blue2,
          //leading: const Icon(Icons.menu),
          actions: [
            const Icon(
              Icons.settings,
              size: 25,
            ),
            freeH(w: 12)
          ]),
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * .48,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: grad,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                          'assets/images/p1.png',
                          height: 140,
                        ),
                        SizedBox(
                          child: Column(
                            children: const [
                              Text(
                                'Your Name',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'your_email@gmail.com',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 40, right: 40, bottom: 10, top: 20),
                    height: 140,
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
                        const Text(
                          '\$ 4,500.00',
                          style: TextStyle(
                            color: Color(0xFF05133B),
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        button(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Transfer()));
                        }, 'Transfer')
                      ],
                    ),
                  ),
                ],
              )),
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
                      freeV(h: 30),
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
                freeV(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'show more',
                      style: TextStyle(
                        color: blue1,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      color: blue1,
                    ),
                    freeH()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
