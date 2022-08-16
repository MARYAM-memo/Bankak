import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/icons.dart';
import 'package:flutter/material.dart';

class Transactons extends StatelessWidget {
  const Transactons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(context, 'Transactions', color: blue2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .15,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: appGradient,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  activeTransactionHeader('Completed'),
                  nonActiveTransactionHeader('InProgress'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                child: Column(
                  children: [
                    freeV(h: 40),
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
            ),
            freeV(h: 40),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    leftarrow,
                    color: blue3,
                    size: 40,
                  ),
                  for (int i = 0; i < 5; i++)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        solidcircle,
                        size: 15,
                        color: blue3,
                      ),
                    ),
                  Icon(
                    rightarrow,
                    color: blue3,
                    size: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
