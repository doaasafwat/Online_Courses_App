import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_courses_app/widgets/circle_instructor_list_view.dart';
import 'package:online_courses_app/widgets/courses_card_list_view.dart';
import 'package:online_courses_app/widgets/search_bar.dart';
import 'package:online_courses_app/widgets/section_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomSearchBar(),
            const SizedBox(height: 10),
            SectionHeader(title: 'New Courses', onShowAll: () {}),
            const SizedBox(height: 4),
            const CoursesCardListView(),
            const SizedBox(height: 10),
            SectionHeader(title: 'Top-Rated Courses', onShowAll: () {}),
            const SizedBox(height: 4),
            const CoursesCardListView(),
            const SizedBox(height: 10),
            SectionHeader(title: 'Recommended', onShowAll: () {}),
            const SizedBox(height: 4),
            const CoursesCardListView(),
            const SizedBox(height: 10),
            SectionHeader(title: 'Instructors', onShowAll: () {}),
            const SizedBox(height: 4),
            const CircleInstructorListView(),
          ]),
        ));
  }
}
