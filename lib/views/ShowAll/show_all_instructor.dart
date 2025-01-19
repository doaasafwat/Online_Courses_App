import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/ShowAll/show_all_followers_list_view.dart';
import 'package:online_courses_app/views/ShowAll/show_all_instructor_list_view.dart';

class ShowAllInstructor extends StatefulWidget {
  const ShowAllInstructor({super.key, required this.title});
  final String title;

  @override
  State<ShowAllInstructor> createState() => _ShowAllInstructorState();
}

class _ShowAllInstructorState extends State<ShowAllInstructor> {
  bool isShowingInstructors = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 243, 250),
        elevation: 1,
        shadowColor: const Color.fromARGB(255, 224, 243, 250),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isShowingInstructors = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isShowingInstructors ? primaryColor : backgroundColor,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8))),
                    ),
                    child: Text(
                      'Instructors',
                      style: TextStyle(
                          color: isShowingInstructors
                              ? Colors.white
                              : primaryColor,
                          fontSize: 14),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isShowingInstructors = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: !isShowingInstructors
                          ? primaryColor
                          : backgroundColor, 
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                    ),
                    child: Text(
                      'Followers',
                      style: TextStyle(
                          color: isShowingInstructors
                              ? primaryColor
                              : Colors.white,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: isShowingInstructors
                ? const ShowAllInstructorListView()
                : const ShowAllFollowersListView(),
          ),
        ],
      ),
    );
  }
}
