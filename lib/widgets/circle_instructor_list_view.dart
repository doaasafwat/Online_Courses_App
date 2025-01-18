
import 'package:flutter/material.dart';

class CircleInstructorListView extends StatelessWidget {
  const CircleInstructorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ClipOval(
              child: Container(
                width: 60,
                height: 60,
                color: Colors.grey.shade200,
                child: Image.asset('assets/image/instructor.png'),
              ),
            ),
          );
        },
      ),
    );
  }
}
