import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Courses%20Details/course_lessons.dart';
import 'package:online_courses_app/views/Courses%20Details/details_section.dart';
import 'package:online_courses_app/views/Courses%20Details/review_section.dart';

class CourseTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            indicatorColor: primaryColor,
            labelColor: primaryColor,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Details'),
              Tab(text: 'Lessons'),
              Tab(text: 'Reviews'),
            ],
          ),
          SizedBox(
            height: 500,
            child: TabBarView(
              children: [
                const DetailsSection(),
                CourseLessons(),
                const ReviewSection()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
