
import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';

class CourseHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/image/coursesDetails.png',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              'Programming Basics for Beginners',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              SizedBox(width: 60),
              Icon(Icons.play_circle_outline, size: 20, color: Colors.grey),
              SizedBox(width: 4),
              Text('15 lessons'),
              SizedBox(width: 16),
              SizedBox(width: 16),
              Icon(Icons.language, size: 20, color: Colors.grey),
              SizedBox(width: 4),
              Text('English'),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              SizedBox(width: 60),
              Icon(Icons.access_time_outlined, size: 20, color: Colors.grey),
              SizedBox(width: 4),
              Text('34 hours'),
              SizedBox(width: 45),
              Icon(Icons.people_alt, size: 20, color: Colors.grey),
              SizedBox(width: 4),
              Text('2154'),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                children: [
                  Icon(Icons.star, size: 20, color: Colors.amber),
                  SizedBox(width: 4),
                  Text('4.5 ',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                          fontSize: 16)),
                  Text('(1804)',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey)),
                ],
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff124559)),
                ),
                child: const Text(
                  '4500 EGP',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}