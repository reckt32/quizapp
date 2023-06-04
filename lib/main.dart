import 'package:flutter/material.dart';
import 'package:quizapp/splashscreen.dart';
import 'package:quizapp/start.dart';
import 'package:quizapp/user_input.dart';
import 'package:quizapp/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Quiz App',
    initialRoute: '/first',
    routes: {
      '/first': (context) => const SplashScreen(),
      '/': (context) => const user_input(),
      '/start': (context) => const starts(),
      '/second': (context) => const home(),
    },
  ));
}
