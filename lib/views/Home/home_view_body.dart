import 'package:flutter/material.dart';
import 'package:online_courses_app/views/ShowAll/show_all_instructor.dart';
import 'package:online_courses_app/views/ShowAll/show_all_view.dart';
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
            SectionHeader(
                title: 'New Courses',
                onShowAll: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ShowAllView(
                      title: 'New Courses',
                    );
                  }));
                }),
            const SizedBox(height: 4),
            const CoursesCardListView(),
            const SizedBox(height: 10),
            SectionHeader(
                title: 'Top-Rated Courses',
                onShowAll: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ShowAllView(
                      title: 'Top-Rated Courses',
                    );
                  }));
                }),
            const SizedBox(height: 4),
            const CoursesCardListView(),
            const SizedBox(height: 10),
            SectionHeader(
                title: 'Recommended',
                onShowAll: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ShowAllView(
                      title: 'Recommended',
                    );
                  }));
                }),
            const SizedBox(height: 4),
            const CoursesCardListView(),
            const SizedBox(height: 10),
            SectionHeader(
                title: 'Instructors',
                onShowAll: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ShowAllInstructor(
                      title: 'Instructors',
                    );
                  }));
                }),
            const SizedBox(height: 4),
            const CircleInstructorListView(),
          ]),
        ));
  }
}
