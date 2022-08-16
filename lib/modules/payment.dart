import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(context, 'Payments', color: blue2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .26,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: appGradient,
                ),
                child: Center(
                  child: ListTile(
                    leading: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: white),
                        child: const Icon(
                          Icons.person,
                          size: 50,
                          color: blue2,
                        )),
                    title: const Text(
                      'BALANCE',
                      style: TextStyle(
                          color: Color(0xFF2196F3),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2.2),
                    ),
                    subtitle: Text(
                      '\$ 4,500.00',
                      style: TextStyle(
                        color: white.withOpacity(.9),
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              freeV(h: 40),
              SizedBox(
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.1,
                  children: [
                    for (int i = 0; i < paymentItemsCircles.length; i++)
                      paymentItems(
                          title: paymentItemsCircles[i]['txt'],
                          color: paymentItemsCircles[i]['color'],
                          icon: paymentItemsCircles[i]['icon'])
                  ],
                ),
              ),
              freeV(h: 40),
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
            ],
          ),
        ));
  }
}
