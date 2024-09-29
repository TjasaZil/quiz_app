import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/quiz-logo.png',
              width: 250, color: const Color.fromARGB(150, 249, 238, 252)),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
                color: Color.fromARGB(255, 245, 228, 250), fontSize: 20),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(color: Colors.transparent)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start quiz'))
        ],
      ),
    );
  }
}
