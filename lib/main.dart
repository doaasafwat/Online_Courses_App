import 'package:flutter/material.dart';
import 'package:online_courses_app/views/splashView/splash_view.dart';

void main() {
  runApp(const OnlineCoursesApp());
}

class OnlineCoursesApp extends StatelessWidget {
  const OnlineCoursesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashView(),
      ),
    );
  }
}
