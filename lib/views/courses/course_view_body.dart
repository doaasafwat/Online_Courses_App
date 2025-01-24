import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/ShowAll/show_all_list_view.dart';
import 'package:online_courses_app/views/courses/course_enroll_list_view.dart';
import 'package:online_courses_app/views/courses/course_learning_list_view.dart';

class CourseViewBody extends StatefulWidget {
  const CourseViewBody({super.key});

  @override
  State<CourseViewBody> createState() => _CourseViewBodyState();
}

class _CourseViewBodyState extends State<CourseViewBody> {
  bool isShowingLearning = true;
  bool isShowingEnrolled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isShowingLearning = true;
                      isShowingEnrolled = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isShowingLearning ? primaryColor : backgroundColor,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: primaryColor),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                  ),
                  child: Text(
                    'Learning',
                    style: TextStyle(
                        color: isShowingLearning ? Colors.white : primaryColor,
                        fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isShowingEnrolled = true;
                      isShowingLearning = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isShowingEnrolled ? primaryColor : backgroundColor,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor),
                    ),
                  ),
                  child: Text(
                    'Enrolled',
                    style: TextStyle(
                        color: isShowingEnrolled ? Colors.white : primaryColor,
                        fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isShowingLearning = false;
                      isShowingEnrolled = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: !isShowingEnrolled && !isShowingLearning
                        ? primaryColor
                        : backgroundColor,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: primaryColor),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8))),
                  ),
                  child: Text(
                    'Favorite',
                    style: TextStyle(
                        color: !isShowingEnrolled && !isShowingLearning
                            ? Colors.white
                            : primaryColor,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: isShowingLearning
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: CourseLearningListView(),
                )
              : isShowingEnrolled
                  ? const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: CourseEnrollListView(),
                    )
                  : const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: ShowAllListView(),
                    ),
        ),
      ],
    );
  }
}
