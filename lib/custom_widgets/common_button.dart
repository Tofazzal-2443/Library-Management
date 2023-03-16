import 'package:flutter/material.dart';
import 'package:library_management/custom_widgets/texts_and_color.dart';

class CommonButton extends StatelessWidget {
   CommonButton({
    super.key,
     required this.text,
     required this.onTap,
  });

  String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              Color(0xffFE8C08),
              Color(0xffF54B30),
            ],
          ),
        ),
        child: Center(
          child: Text(
            "$text",
            style: myStyle(
              25,
              textClrLight,
              FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}