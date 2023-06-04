import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class starts extends StatefulWidget {
  const starts({super.key});

  @override
  State<starts> createState() => _startsState();
}

class _startsState extends State<starts> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/second');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 43, 43, 43),
        child: Center(
          child: LottieBuilder.asset('animations/16388-countdown.json'),
        ),
      ),
    );
  }
}
