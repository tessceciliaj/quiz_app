import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  // Function is a type buildt into Dart,
  // the function takes no arguments and returns nothing
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.6,
            child: Image.asset('assets/images/quiz-logo.png',
                width: 200, color: const Color.fromARGB(150, 255, 255, 255)),
          ),
          const SizedBox(height: 40),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.poppins(fontSize: 16),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            // Pass the startQuiz function to the Button.
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_circle_right_outlined),
          )
        ],
      ),
    );
  }
}
