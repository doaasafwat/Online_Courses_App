

import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Courses%20Details/lesson_tile.dart';
import 'package:online_courses_app/views/Courses%20Details/section_quiz.dart';
import 'package:online_courses_app/views/Courses%20Details/section_title.dart';

class CourseLessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SectionTitle(title: "Section 1: Introduction"),
        LessonTile(
          noLesson: '1',
          title: 'What is Programming?',
          duration: '15 min',
          onDownload: () {},
          onPlay: () {},
        ),
        LessonTile(
          noLesson: '2',
          title: 'Why Programming Matters?',
          duration: '15 min',
          onDownload: () {},
          onPlay: () {},
        ),
        LessonTile(
          noLesson: '3',
          title: 'What is Programming?',
          duration: '15 min',
          onDownload: () {},
          onPlay: () {},
        ),
        LessonTile(
          noLesson: '4',
          title: 'Why Programming Matters?',
          duration: '15 min',
          onDownload: () {},
          onPlay: () {},
        ),
        SectionQuiz(),
        const SectionTitle(title: "Section 2: Basics"),
        LessonTile(
          noLesson: '1',
          title: 'Core Components of Programming',
          duration: '15 min',
          onDownload: () {},
          onPlay: () {},
        ),
        LessonTile(
          noLesson: '2',
          title: 'Core Components of Programming',
          duration: '15 min',
          onDownload: () {},
          onPlay: () {},
        ),
        LessonTile(
          noLesson: '3',
          title: 'Core Components of Programming',
          duration: '15 min',
          onDownload: () {},
          onPlay: () {},
        ),
      ],
    );
  }
}
