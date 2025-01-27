
import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Courses%20Details/instructor_header.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About Course',
              style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Lorem ipsum dolor sit amet consectetur. Proin dui habitant tempus eu. Tristique bibendum risus a dictumst purus vulputate vitae. Nisi malesuada tempor pellentesque ac sit pharetra lect.',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff8D8989),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 18,
            ),
            const InstructorHeader(),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 38, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Add To Cart",
                      style: TextStyle(fontSize: 14, color: primaryColor),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF124559),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 38, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Enroll now",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
