import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/images.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';

class QRCode extends StatelessWidget {
  const QRCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: blue2,
        appBar: appBars(context, '', color: blue2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .58,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: appGradient,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //user's info enter to account page.
                    Text(
                      'Scan this QR-Code...',
                      style: getmedium(
                          size: 20, color: white, weight: FontWeight.w500),
                    ),
                    Image.asset(
                      img12,
                      height: 220,
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
                              style: getregular(color: white.withOpacity(.7))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  child: Column(
                children: [
                  freeV(h: 40),
                  Text(
                    'Try BARCODE NOW !',
                    style: getregular(
                      color: gry.withOpacity(.95),
                    ),
                  ),
                  Image.asset(
                    img11,
                    height: 80,
                  ),
                  freeV(h: 40),
                  Text(
                    'Can\'t scan the QR-Code?',
                    style: getmedium(color: gry.withOpacity(.95)),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Try  ',
                        style: getregular(color: gry.withOpacity(.95)),
                      ),
                      Text(
                        'BANK ACCOUNT',
                        style: getregular(color: blue1),
                      )
                    ],
                  )
                ],
              )),
            ],
          ),
        ));
  }
}
