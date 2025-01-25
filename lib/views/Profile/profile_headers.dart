
import 'package:flutter/material.dart';

class ProfileHeaders extends StatelessWidget {
  const ProfileHeaders(
      {super.key,
      required this.username,
      required this.image,
      required this.email});
  final String username;
  final String image;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(height: 16),
        Text(
          username,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff124559)),
        ),
        Text(
          email,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
