import 'package:flutter/material.dart';

import 'app_color.dart';

abstract class MyTextStyle {
//header
  static const header = TextStyle(color: Colors.white, fontSize: 30);

  //subTitle
  static const subTitle = TextStyle(fontSize: 17, color: Colors.grey);

//hintStyle
  static const hintStyle = TextStyle(fontSize: 14, color: Colors.grey);

  //base
  static TextStyle base = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff6E6D6D));
}
