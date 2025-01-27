import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Courses%20Details/course_header.dart';
import 'package:online_courses_app/views/Courses%20Details/course_tabs.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 243, 250),
        elevation: 1,
        shadowColor: const Color.fromARGB(255, 224, 243, 250),
        centerTitle: true,
        title: const Text(
          'Course Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [
          SizedBox(
            width: 30,
            height: 30,
            child: CircleAvatar(
              backgroundColor: const Color(0xffCFCFCF),
              child: IconButton(
                onPressed: () {},
                icon: const Center(
                  child: Icon(
                    size: 15,
                    Icons.favorite,
                    color: Color(0xff124559),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CourseHeader(),
            CourseTabs(),
          ],
        ),
      ),
    );
  }
}

