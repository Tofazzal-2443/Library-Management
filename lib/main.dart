import 'package:flutter/material.dart';
import 'package:library_management/pages/admin/login_page.dart';
import 'package:library_management/pages/admin/signup_page.dart';
import 'package:library_management/pages/home__page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}
