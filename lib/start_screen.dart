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
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Learn Flutter the fun way!'),
          ),
          ElevatedButton(
            onPressed: _handleClick,
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
