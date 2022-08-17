import 'package:bankak_app/modules/add_transaction.dart';
import 'package:bankak_app/modules/transactons/sliders.dart';
import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/icons.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';

class Transactons extends StatefulWidget {
  const Transactons({Key? key}) : super(key: key);

  @override
  State<Transactons> createState() => _TransactonsState();
}

class _TransactonsState extends State<Transactons> {
  bool move = false;
  int current = 0;
  List headerTexts = ['Completed', 'In Progress'];
  int currentSlide = 0;
  final PageController controller = PageController();
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
                  for (int i = 0; i < headerTexts.length; i++)
                    designHeader(headerTexts[i], i, press: () {
                      setState(() {
                        current = i;
                      });
                    }),
                ],
              ),
            ),
            current == 0
                ? SizedBox(
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).size.height * .15 -
                        80,
                    child: PageView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return TransactionSlider(model: dataOfSlides[index]);
                      },
                      itemCount: dataOfSlides.length,
                      controller: controller,
                      onPageChanged: (pageIndex) async {
                        setState(() {
                          currentSlide = pageIndex;
                        });
                      },
                    ),
                  )
                : SizedBox(
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).size.height * .15 -
                        80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'There isn\'t transactions inProgress',
                          style: getlight(),
                        ),
                        TextButton(
                          child: Text(
                            'Add new Transacton',
                            style: links.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const AddTransacton()));
                          },
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
      bottomSheet: current == 0
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //left arrow
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(toPrevious(),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceInOut);
                      },
                      icon: Icon(
                        leftarrow,
                        color: blue3,
                        size: 40,
                      )),
                  Row(
                    children: [
                      for (int i = 0; i < dataOfSlides.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: points(i),
                        )
                    ],
                  ),
                  //right arrow
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(toNext(),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceInOut);
                      },
                      icon: Icon(
                        rightarrow,
                        color: blue3,
                        size: 40,
                      )),
                ],
              )),
            )
          : SizedBox(),
    );
  }

  Widget designHeader(txt, index, {press}) {
    if (current == index) {
      return activeTransactionHeader(txt, tap: press);
    } else {
      return nonActiveTransactionHeader(txt, tap: press);
    }
  }

  int toPrevious() {
    int previous = --currentSlide;
    if (previous == currentSlide && previous == -1) {
      setState(() {
        previous = dataOfSlides.length - 1;
      });
    }
    return previous;
  }

  int toNext() {
    int next = ++currentSlide;
    if (next == currentSlide && next == dataOfSlides.length) {
      setState(() {
        next = 0;
      });
    }
    return next;
  }

  Widget points(int index) {
    if (index == currentSlide) {
      return const Icon(
        Icons.circle_rounded,
        color: blue3,
        size: 15,
      );
    } else {
      return const Icon(
        Icons.circle_outlined,
        color: gry,
        size: 10,
      );
    }
  }
}
