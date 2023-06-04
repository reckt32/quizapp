import 'package:flutter/material.dart';
import 'questions/question_card.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Play!'),
          elevation: 0,
        ),
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Questioncard());
  }
}
