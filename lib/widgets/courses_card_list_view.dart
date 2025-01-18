import 'package:flutter/material.dart';
import 'package:online_courses_app/widgets/course_card.dart';

class CoursesCardListView extends StatelessWidget {
  const CoursesCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 181,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const CourseCard(
            title: 'Programming Basics for Beginners',
            teacher: 'Name of Instructor',
            price: '4500 EGP',
            rating: 4.5,
            isNew: true,
            image: 'assets/image/course.png',
          );
        },
      ),
    );
  }
}
