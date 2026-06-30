import 'package:flutter/material.dart';
//كل اللاوان في مكان واحد
class AppColors {
  static const Color primary = Color.fromARGB(255, 141, 98, 134);
  static const Color secondary = Color.fromARGB(255, 189, 188, 182);
//const لأن اللون ثابت ومش بيتغير أثناء تشغيل التطبيق.
//static عشان نقدر نستدعيه مباشرة كده:
  static const Color white = Color.fromARGB(255, 190, 180, 180);
  static const Color black = Colors.black;

  static const Color background = Color(0xFFF8F8F8);

  static const Color grey = Colors.grey;

  static const Color success = Color.fromARGB(255, 35, 42, 189);
  static const Color error = Colors.red;
}