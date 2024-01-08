import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 33, 18, 99),
          foregroundColor: Colors.white),
      child: Text(
        answerText,
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      ),
    );
  }
}
