import 'dart:math';

import 'package:flutter/material.dart';

Random random = Random();

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  @override
  Widget build(BuildContext context) {
    int randomNum = random.nextInt(6) + 1;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: InkWell(
          onTap: () {
            setState(() {});
          },
          child: Container(
              color: Colors.grey[300],
              child: Center(child: Image.asset('assets/d$randomNum.png'))),
        ),
      )),
    );
  }
}
