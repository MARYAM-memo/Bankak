import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';

import 'shared_widgets.dart';

var links = getlight(color: blue1, size: 13);
List items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'del', 0, '.'];
List paymentItemsCircles = [
  {'color': Colors.blueAccent, 'icon': Icons.water_drop, 'txt': 'Water'},
  {
    'color': Colors.orangeAccent,
    'icon': Icons.lightbulb_outline_rounded,
    'txt': 'Electicity'
  },
  {'color': Colors.redAccent, 'icon': Icons.gas_meter_rounded, 'txt': 'Gas'},
  {
    'color': Colors.pinkAccent,
    'icon': Icons.shopping_bag_rounded,
    'txt': 'Shopping'
  },
  {
    'color': Colors.blue[900],
    'icon': Icons.phone_iphone_rounded,
    'txt': 'Phone'
  },
  {
    'color': Colors.green[900],
    'icon': Icons.credit_card_rounded,
    'txt': 'Credit Card'
  },
  {'color': Colors.teal, 'icon': Icons.security_rounded, 'txt': 'Insurance'},
  {'color': Colors.blueGrey, 'icon': Icons.home_rounded, 'txt': 'Mortage'},
  {
    'color': Colors.blueGrey[800],
    'icon': Icons.text_snippet_rounded,
    'txt': 'Other Bills'
  },
];

List<Map<String, Object>> settingsPopUpMenuItems = [
  {
    "id": 0,
    "txt": "QR-Code",
  },
  {
    "id": 1,
    "txt": "Payments",
  },
  {
    "id": 2,
    "txt": "Add Transaction",
  },
  {
    "id": 3,
    "txt": "Add Card",
  },
];
List<Map<String, Object>> coinsPopUpMenuItems = [
  {
    "id": 0,
    "txt": "\$",
  },
  {
    "id": 1,
    "txt": "€",
  },
  {
    "id": 2,
    "txt": "£",
  },
  {
    "id": 3,
    "txt": "¥",
  },
];
List<Map<String, Object>> countryCodePopUpMenuItems = [
  {
    "id": 0,
    "txt": "+20",
  },
  {
    "id": 1,
    "txt": "+44",
  },
  {
    "id": 2,
    "txt": "+202",
  },
  {
    "id": 3,
    "txt": "+1",
  },
  {
    "id": 4,
    "txt": "+1",
  },
  {
    "id": 5,
    "txt": "+1",
  },
  {
    "id": 6,
    "txt": "+1",
  },
];

String countryCode = '+44';

List dataSlider = [
  latestTransactionItem(
      txt1: 'Lorem Ipsum Company',
      txt2: 'Recieved payment',
      money: "\$2,030.80"),
  latestTransactionItem(
      txt1: 'Auctor Elit Ltd', txt2: 'Transfer money', money: "-\$450.00"),
  latestTransactionItem(
      txt1: 'Lectus sit Amet est',
      txt2: 'Gas & electicity payments',
      money: "-\$259.00"),
  latestTransactionItem(
      txt1: 'Congue QuisQue', txt2: 'Withdraw money', money: "-\$1,500.00"),
  latestTransactionItem(
      txt1: 'Lorem Ipsum Company',
      txt2: 'Recieved payment',
      money: "\$2,030.80"),
  latestTransactionItem(
      txt1: 'Auctor Elit Ltd', txt2: 'Transfer money', money: "-\$450.00"),
  latestTransactionItem(
      txt1: 'Lectus sit Amet est',
      txt2: 'Gas & electicity payments',
      money: "-\$259.00"),
  latestTransactionItem(
      txt1: 'Congue QuisQue', txt2: 'Withdraw money', money: "-\$1,500.00"),
  latestTransactionItem(
      txt1: 'Lorem Ipsum Company',
      txt2: 'Recieved payment',
      money: "\$2,030.80"),
  latestTransactionItem(
      txt1: 'Auctor Elit Ltd', txt2: 'Transfer money', money: "-\$450.00"),
  latestTransactionItem(
      txt1: 'Lectus sit Amet est',
      txt2: 'Gas & electicity payments',
      money: "-\$259.00"),
  latestTransactionItem(
      txt1: 'Congue QuisQue', txt2: 'Withdraw money', money: "-\$1,500.00"),
  latestTransactionItem(
      txt1: 'Lorem Ipsum Company',
      txt2: 'Recieved payment',
      money: "\$2,030.80"),
  latestTransactionItem(
      txt1: 'Auctor Elit Ltd', txt2: 'Transfer money', money: "-\$450.00"),
  latestTransactionItem(
      txt1: 'Lectus sit Amet est',
      txt2: 'Gas & electicity payments',
      money: "-\$259.00"),
  latestTransactionItem(
      txt1: 'Congue QuisQue', txt2: 'Withdraw money', money: "-\$1,500.00"),
  latestTransactionItem(
      txt1: 'Lorem Ipsum Company',
      txt2: 'Recieved payment',
      money: "\$2,030.80"),
  latestTransactionItem(
      txt1: 'Auctor Elit Ltd', txt2: 'Transfer money', money: "-\$450.00"),
  latestTransactionItem(
      txt1: 'Lectus sit Amet est',
      txt2: 'Gas & electicity payments',
      money: "-\$259.00"),
  latestTransactionItem(
      txt1: 'Congue QuisQue', txt2: 'Withdraw money', money: "-\$1,500.00"),
  latestTransactionItem(
      txt1: 'Lorem Ipsum Company',
      txt2: 'Recieved payment',
      money: "\$2,030.80"),
  latestTransactionItem(
      txt1: 'Auctor Elit Ltd', txt2: 'Transfer money', money: "-\$450.00"),
  latestTransactionItem(
      txt1: 'Lectus sit Amet est',
      txt2: 'Gas & electicity payments',
      money: "-\$259.00"),
  latestTransactionItem(
      txt1: 'Congue QuisQue', txt2: 'Withdraw money', money: "-\$1,500.00"),
  latestTransactionItem(
      txt1: 'Lorem Ipsum Company',
      txt2: 'Recieved payment',
      money: "\$2,030.80"),
  latestTransactionItem(
      txt1: 'Auctor Elit Ltd', txt2: 'Transfer money', money: "-\$450.00"),
  latestTransactionItem(
      txt1: 'Lectus sit Amet est',
      txt2: 'Gas & electicity payments',
      money: "-\$259.00"),
];
