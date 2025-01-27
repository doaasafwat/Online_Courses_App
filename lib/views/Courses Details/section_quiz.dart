
import 'package:flutter/material.dart';

class SectionQuiz extends StatelessWidget {
  const SectionQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Section Quiz',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff124559)),
            ),
            child: const Text(
              'Start the Quiz',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ))
      ],
    );
  }
}
