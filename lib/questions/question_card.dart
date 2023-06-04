// ignore_for_file: avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizapp/score.dart';

List<String> q = [
  "Who sang the title song for the latest Bond film, No Time to Die?",
  "Where was the first example of paper money used?",
  "Which Game of Thrones character is known as the Young Wolf?",
  "Which app has the most total users?",
  "What spirit is used in making a Tom Collins?"
];
List<String> o = [
  "Adele",
  "Sam Smith",
  "Billie Eilish",
  "China",
  "Europe",
  "Middle East",
  "Jamie Lannister",
  "Arya Stark",
  "Robb Stark",
  "Tik Tok",
  "Aarogya Setu",
  "Instagram",
  "Wine",
  "Gin",
  "Vodka"
];

int score = 0;
int i = 0;
int j = 0;

class Questioncard extends StatefulWidget {
  const Questioncard({super.key});

  @override
  State<Questioncard> createState() => _QuestioncardState();
}

class _QuestioncardState extends State<Questioncard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 40.0, 18.0, 10.0),
          child: Container(
            width: 300,
            height: 550,
            decoration: BoxDecoration(
                color: Color.fromARGB(220, 0, 0, 153),
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle),
                    height: 100.0,
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          q[i],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 21,
                ),
                Container(
                  height: 75.0,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (i == 4) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Score()));
                          } else if (i < 4) {
                            if (i == 1) score++;
                            i++;
                            j += 3;
                          }
                        });
                      },
                      child: Text(o[j])),
                ),
                SizedBox(
                  height: 21,
                ),
                Container(
                  height: 75.0,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (i == 4) {
                            score++;
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Score()));
                          } else if (i < 4) {
                            i++;
                            j += 3;
                          }
                        });
                      },
                      child: Text(o[j + 1])),
                ),
                SizedBox(
                  height: 21,
                ),
                Container(
                  height: 75.0,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (i == 4) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Score()));
                          } else if (i < 4) {
                            if (i == 3 || i == 0 || i == 2) score++;
                            i++;
                            j += 3;
                          }
                        });
                      },
                      child: Text(o[j + 2])),
                ),
                SizedBox(
                  height: 21,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 50.0,
                    width: 100.0,
                    color: Color.fromARGB(255, 0, 238, 255),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Your Score is $score",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
