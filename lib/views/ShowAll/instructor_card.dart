
import 'package:flutter/material.dart';
import 'package:online_courses_app/views/ShowAll/follow_button.dart';

class InstructorCard extends StatelessWidget {
  final String name;
  final String field;
  final String imagePath;
  final FollowButton followButton;
  const InstructorCard({
    Key? key,
    required this.name,
    required this.field,
    required this.imagePath,
    required this.followButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164,
      width: 164,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff124559)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            field,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          FollowButton(text: followButton.text, color: followButton.color),
        ],
      ),
    );
  }
}
