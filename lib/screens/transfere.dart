import 'package:bankak_app/consts.dart';
import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer({Key? key}) : super(key: key);

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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/dolar.png',
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
                      ), //21C4
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
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '\$',
                                  style: TextStyle(
                                      color: blue1,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                )
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
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '€',
                                  style: TextStyle(
                                      color: blue1,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                )
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
                      freeV(h: 40),
                      SizedBox(
                        // margin: const EdgeInsets.all(20),
                        child: GridView(
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 150,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8,
                                  childAspectRatio: 1.5),
                          children: [
                            for (int i = 0; i < items.length; i++)
                              numberkeyboardButtons(items[i]),
                          ],
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

List items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'del', 0, '.'];
Widget numberkeyboardButtons(index) {
  return Container(
    height: 40,
    width: 20,
    decoration:
        BoxDecoration(gradient: grad, borderRadius: BorderRadius.circular(10)),
    child: Center(
      child: Text(
        '$index',
        style: const TextStyle(
            color: white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
    ),
  );
}
