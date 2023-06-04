import 'package:flutter/material.dart';
import 'package:quizapp/questions/question_card.dart';
import 'package:lottie/lottie.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 121, 119, 119),
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Lottie.asset('animations/18579-loading-complete.json',
                repeat: false),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "Congratulations! Your score was $score !",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
                onPressed: () {
                  score = 0;
                  i = 0;
                  j = 0;
                  Navigator.pushNamed(context, '/start');
                },
                child: Text('Play Again?'))
          ],
        ),
      ),
    );
  }
}
