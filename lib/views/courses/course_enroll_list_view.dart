import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Courses%20Details/course_details_view.dart';
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
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CourseDetailsView();
            }));
          },
          child: const EnrollCourseCard(
            courseTitle: 'Programming Basics for Beginners',
            teacherName: 'Name of Teacher',
            rating: 4.5,
            image: 'assets/image/categoryImage.png',
          ),
        );
      },
    );
  }
}
