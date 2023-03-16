import 'package:flutter/material.dart';
import 'package:library_management/custom_widgets/common_button.dart';
import 'package:library_management/custom_widgets/texts_and_color.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        centerTitle: true,
        title: Text(
          "Library Management",
          style: myStyle(
            25,
            textClrLight,
            FontWeight.w700,
          ),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xffFE8C08),
            Color(0xffF54B30),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonButton(
                text: "Admin",
                onTap: (){},
              ),
              SizedBox(height: 20,),
              CommonButton(
                text: "User",
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


