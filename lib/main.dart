import 'package:flutter/material.dart';
import 'package:ufu_chat_app/constants.dart';
import 'package:ufu_chat_app/screens/Login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ufe chat app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: LoginPage(),
    );
  }
}
