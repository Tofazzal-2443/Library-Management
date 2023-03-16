import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(double size, [Color? clr, FontWeight? fw]) {
  return GoogleFonts.nunito(
    fontSize: size,
    color: clr,
    fontWeight: fw,
  );
}

const Color textClrLight = Color(0xffE4E4E6);
const Color textClrDark = Color(0xff8A8A8E);
const Color buttonC = Color(0xffFE8C08);
const LinearGradient buttonClr = LinearGradient(
  colors: [
    Color(0xffFE8C08),
    Color(0xffF54B30),
  ],
);
