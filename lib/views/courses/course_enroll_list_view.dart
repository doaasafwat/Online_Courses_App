import 'package:flutter/material.dart';
import 'package:online_courses_app/views/courses/enroll_course_card.dart';

class CourseEnrollListView extends StatelessWidget {
  const CourseEnrollListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const EnrollCourseCard(
          courseTitle: 'Programming Basics for Beginners',
          teacherName: 'Name of Teacher',
          rating: 4.5,
          image: 'assets/image/categoryImage.png',
        );
      },
    );
  }
}
