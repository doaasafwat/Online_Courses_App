import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/ShowAll/follow_button.dart';
import 'package:online_courses_app/views/ShowAll/instructor_card.dart';

class ShowAllInstructorListView extends StatelessWidget {
  const ShowAllInstructorListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return InstructorCard(
          name: 'Ahmed Mahmoud',
          field: index % 2 == 0 ? 'UI/UX Design' : 'Programming',
          imagePath: 'assets/image/instructor.png',
          followButton: const FollowButton(
            color: primaryColor,
            text: 'Follow',
          ),
        );
      },
    );
  }
}
