import 'package:flutter/material.dart';
import 'package:online_courses_app/views/ChatBot/chatbot_feature.dart';
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
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchBar(),
                const SizedBox(height: 10),
                SectionHeader(
                  title: 'New Courses',
                  onShowAll: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ShowAllView(
                        title: 'New Courses',
                      );
                    }));
                  },
                ),
                const SizedBox(height: 4),
                const CoursesCardListView(),
                const SizedBox(height: 10),
                SectionHeader(
                  title: 'Top-Rated Courses',
                  onShowAll: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ShowAllView(
                        title: 'Top-Rated Courses',
                      );
                    }));
                  },
                ),
                const SizedBox(height: 4),
                const CoursesCardListView(),
                const SizedBox(height: 10),
                SectionHeader(
                  title: 'Recommended',
                  onShowAll: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ShowAllView(
                        title: 'Recommended',
                      );
                    }));
                  },
                ),
                const SizedBox(height: 4),
                const CoursesCardListView(),
                const SizedBox(height: 10),
                SectionHeader(
                  title: 'Instructors',
                  onShowAll: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ShowAllInstructor(
                        title: 'Instructors',
                      );
                    }));
                  },
                ),
                const SizedBox(height: 4),
                const CircleInstructorListView(),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 16,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                if (context.mounted) {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const ChatBotFeature(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                }
              },
              customBorder: const CircleBorder(),
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/image/chat.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
