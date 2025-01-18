import 'package:flutter/material.dart';

class LoginWithIcon extends StatelessWidget {
  const LoginWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset('assets/image/google.png'),
          iconSize: 50,
          onPressed: () {
            // تنفيذ الإجراء
          },
        ),
        const SizedBox(width: 30),
        IconButton(
          icon: Image.asset('assets/image/apple.png'),
          iconSize: 50,
          onPressed: () {
            // تنفيذ الإجراء
          },
        ),
        const SizedBox(width: 30),
        IconButton(
          icon: Image.asset('assets/image/facebook.png'),
          iconSize: 50,
          onPressed: () {
            // تنفيذ الإجراء
          },
        ),
      ],
    );
  }
}
