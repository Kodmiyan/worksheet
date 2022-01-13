import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabitler {
  static const anaRenk = Color.fromRGBO(18, 10, 143, 1);
  static const ikincilRenk = Color(0xFFe6f3f8);

  static TextStyle textStyle(
          double size, FontWeight fontWeight, Color colorname) =>
      GoogleFonts.quicksand(
        fontWeight: fontWeight,
        fontSize: size,
        color: colorname,
      );
  static BorderRadius borderRadius = BorderRadius.circular(24);
}
