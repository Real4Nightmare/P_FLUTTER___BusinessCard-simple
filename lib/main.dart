import 'package:flutter/material.dart';
import 'Home_Screen.dart';
void main()=> runApp(const BusinessCard());

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
