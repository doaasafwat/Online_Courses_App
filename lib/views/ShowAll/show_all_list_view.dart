
import 'package:flutter/material.dart';
import 'package:online_courses_app/views/ShowAll/show_all_course_card.dart';

class ShowAllListView extends StatelessWidget {
  const ShowAllListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const ShowAllCourseCard(
          courseTitle: 'Programming Basics for Beginners',
          teacherName: 'Name of Teacher',
          price: '4500 EGP',
          rating: 4.5,
          image: 'assets/image/categoryImage.png',
        );
      },
    );
  }
}
