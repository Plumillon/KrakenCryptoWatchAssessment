import 'package:flutter/material.dart';

class Styles {
  static const background = primary900;

  static const primary100 = Color(0xFFEAE7FF);
  static const primary200 = Color(0xFFDCD9fB);
  static const primary300 = Color(0xFFC8C5E7);
  static const primary400 = Color(0xFFA2A0C0);
  static const primary500 = Color(0xFF807E9D);
  static const primary600 = Color(0xFF595875);
  static const primary700 = Color(0xFF474561);
  static const primary800 = Color(0xFF292842);
  static const primary900 = Color(0xFF080421);

  static const ask300 = Color(0xFFE57373);
  static const ask500 = Color(0xFFF44336);
  static const ask900 = Color(0xFFB71B1C);

  static const bid300 = Color(0xFF81C784);
  static const bid500 = Color(0xFF4CAF50);
  static const bid900 = Color(0xFF1B5E20);

  static Border boxBorder = Border.all(color: Styles.primary700, width: 1.0);

  static const textInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Styles.primary500, width: 1.0));

  static const TextStyle textHeader = TextStyle(
      color: Styles.primary300, fontSize: 14, fontWeight: FontWeight.bold);

  static const TextStyle textQuantity =
      TextStyle(color: Styles.primary100, fontSize: 12);

  static const TextStyle textAsk =
      TextStyle(color: Styles.ask300, fontSize: 12);

  static const TextStyle textBid =
      TextStyle(color: Styles.bid300, fontSize: 12);
}
