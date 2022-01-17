import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = 'Pokedex';
  static TextStyle style() {
    return TextStyle(color: Colors.white, fontSize: 30.r);
  }

  static TextStyle nameStyle() {
    return TextStyle(
        fontWeight: FontWeight.w900, color: Colors.black, fontSize: 15);
  }
}
