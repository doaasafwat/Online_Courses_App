
import 'package:flutter/material.dart';
import 'package:online_courses_app/views/courses/learning_course_card.dart';

class CourseLearningListView extends StatelessWidget {
  const CourseLearningListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: LearningCourseCard(
              title: 'Programming Basics for Beginners',
              houres: '27/34h',
              lessons: '12/15 lessons',
            ),
          );
        });
  }
}