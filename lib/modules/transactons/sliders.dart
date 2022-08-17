import 'package:flutter/material.dart';

import '../../shared/components/shared_widgets.dart';

class TransactionSlider extends StatefulWidget {
  const TransactionSlider({Key? key, required this.model}) : super(key: key);
  final SliderModel model;
  @override
  State<TransactionSlider> createState() => _TransactionSliderState();
}

class _TransactionSliderState extends State<TransactionSlider> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            child: Column(
              children: [
                widget.model.transactions,
              ],
            ),
          ),
        ),
        freeV(h: 40),],
    );
  }
}

class SliderModel {
  Widget transactions;
  SliderModel({required this.transactions});
}

List<SliderModel> dataOfSlides = [
  SliderModel(
    transactions: Column(
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
  SliderModel(
    transactions: Column(
      children: [
        freeV(h: 40),
        latestTransactionItem(
            txt1: 'Merooo Ipsum Company',
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
  SliderModel(
    transactions: Column(
      children: [
        freeV(h: 40),
        latestTransactionItem(
            txt1: 'Ahmood Ipsum Company',
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
  SliderModel(
    transactions: Column(
      children: [
        freeV(h: 40),
        latestTransactionItem(
            txt1: 'Adhmn Ipsum Company',
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
  SliderModel(
    transactions: Column(
      children: [
        freeV(h: 40),
        latestTransactionItem(
            txt1: 'xxxxxxxxxxxxxx',
            txt2: 'Recieved payment',
            money: "\$2,030.80"),
        freeV(h: 10),
        latestTransactionItem(
            txt1: 'Maoris Elit Ltd',
            txt2: 'Transfer money',
            money: "-\$450.00"),
        freeV(h: 10),
        latestTransactionItem(
            txt1: 'Lectus sit laca est',
            txt2: 'Gas & electicity payments',
            money: "-\$259.00"),
        freeV(h: 10),
        latestTransactionItem(
            txt1: 'Congue QuisQue',
            txt2: 'Withdraw money',
            money: "-\$1,500.00"),
        freeV(),
        latestTransactionItem(
            txt1: 'Lorem inum Company',
            txt2: 'Recieved payment',
            money: "\$2,030.80"),
        
      ],
    ),
  ),

];
