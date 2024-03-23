import 'package:login_ui/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'qwer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Login_Page(),
    );
  }
}