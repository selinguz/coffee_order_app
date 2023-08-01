import 'package:coffee_order/constants.dart';
import 'package:coffee_order/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'A Cup of Coffee?',
            style: TextStyle(fontSize: 24),
          ),
          backgroundColor: appBarBackgroundColor,
          toolbarHeight: 72,
        ),
        body: LoginPage(),
        
      ),
    );
  }
}
