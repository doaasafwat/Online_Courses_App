import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          icon: SvgPicture.asset('assets/image/google.svg'),
          iconSize: 50,
          onPressed: () {
            // تنفيذ الإجراء
          },
        ),
        const SizedBox(width: 30),
        IconButton(
          icon: SvgPicture.asset('assets/image/apple.svg'),
          iconSize: 50,
          onPressed: () {
            // تنفيذ الإجراء
          },
        ),
        const SizedBox(width: 30),
        IconButton(
          icon: SvgPicture.asset('assets/image/facebook.svg'),
          iconSize: 50,
          onPressed: () {
            // تنفيذ الإجراء
          },
        ),
      ],
    );
  }
}
