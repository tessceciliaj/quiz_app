import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  void _handleClick() {
    setState(() {
      print('clicked');
    });
  }

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
          const Text('Learn Flutter the fun way!'),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: _handleClick,
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_circle_right_outlined),
          )
        ],
      ),
    );
  }
}
