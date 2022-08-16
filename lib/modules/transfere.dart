import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/images.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';
import '../shared/resources/colors.dart';

var coin = '\$';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(context, 'Transfer'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                //top design
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        img3,
                        height: 120,
                      ),
                      Column(
                        children: const [
                          Icon(IconData(0x279C), size: 38, color: blue2), //21C4
                          Icon(
                            IconData(0x279C, matchTextDirection: true),
                            size: 38,
                            color: blue2,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/uoro.png',
                        height: 120,
                      ),
                    ]),
                freeV(h: 40),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
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
                            height: 50,
                            width: MediaQuery.of(context).size.width * .55,
                            child: TextFormField(
                              readOnly: true,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: '1,000.00',
                                hintStyle: const TextStyle(
                                    color: blue1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      freeV(),
                      const Text(
                        'To',
                        style: TextStyle(
                            color: blue3,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      freeV(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
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
                                    press: (val) {
                                      setState(() {
                                        coin = coinsPopUpMenuItems[val as int]
                                            ['txt'] as String;
                                      });
                                    },
                                    context: context,
                                    list: coinsPopUpMenuItems)
                              ],
                            ),
                          ),
                          freeH(w: 10),
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width * .55,
                            child: TextFormField(
                              readOnly: true,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: '780.00',
                                hintStyle: const TextStyle(
                                    color: blue1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      freeV(h: 60),
                      SizedBox(
                        //to control design of gridview in case of rotating phone
                        child: OrientationBuilder(
                          builder: (context, orientation) => Padding(
                            padding: orientation == Orientation.landscape
                                ? const EdgeInsets.symmetric(horizontal: 80)
                                : const EdgeInsets.all(0),
                            child: GridView.count(
                              shrinkWrap: true,
                              crossAxisCount:
                                  orientation == Orientation.portrait ? 3 : 3,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio:
                                  orientation == Orientation.portrait
                                      ? 1.8
                                      : 0.3,
                              physics: const AlwaysScrollableScrollPhysics(),
                              /* gridDelegate:
                                  SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent:
                                          orientation == Orientation.portrait
                                              ? 150
                                              : 500,
                                      crossAxisSpacing: 8,
                                      mainAxisSpacing: 8,
                                      childAspectRatio: 1.5), */
                              children: [
                                for (int i = 0; i < items.length; i++)
                                  numberkeyboardButtons(items[i]),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget numberkeyboardButtons(index) {
  return Container(
    decoration: BoxDecoration(
        gradient: appGradient, borderRadius: BorderRadius.circular(5)),
    child: Center(
      child: Text('$index', style: getmedium(color: white.withOpacity(.95))),
    ),
  );
}
