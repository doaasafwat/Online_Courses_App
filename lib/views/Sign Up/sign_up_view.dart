import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Sign%20Up/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffE6F4FA),
      body: SignUpViewBody(),
    );
  }
}
