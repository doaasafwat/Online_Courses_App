import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Login/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffE6F4FA),
      body: LoginViewBody(),
    );
  }
}
