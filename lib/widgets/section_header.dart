import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(
      {required this.title, required this.onShowAll, super.key});

  final String title;
  final VoidCallback onShowAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onShowAll,
          child: const Text(
            'Show All',
            style: TextStyle(color: Color(0xff768F99), fontSize: 15),
          ),
        ),
      ],
    );
  }
}
