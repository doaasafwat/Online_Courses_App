
import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/ShowAll/follow_button.dart';

class InstructorHeader extends StatelessWidget {
  const InstructorHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 59,
      decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor,
            width: 1,
          ),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            child: Image.asset('assets/image/instructor.png'),
          ),
          const SizedBox(
            width: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed Mohammed',
                  style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '34 course',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const FollowButton(text: 'Follow', color: primaryColor)
        ],
      ),
    );
  }
}
