import 'package:flutter/material.dart';
import 'package:telegram_ui/pages/home.dart';
import 'package:telegram_ui/pages/login.dart';
// import 'package:telegram_ui/pages/chatpage.dart';
// import 'package:telegram_ui/pages/profile.dart';
import 'package:telegram_ui/pages/createaccountpage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccountPage(),
    );
  }
}
