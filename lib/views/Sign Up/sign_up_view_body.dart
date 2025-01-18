import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Login/LoginWithIcon.dart';
import 'package:online_courses_app/views/Login/login_view.dart';
import 'package:online_courses_app/widgets/custom_button.dart';
import 'package:online_courses_app/widgets/text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          Center(
            child: Image.asset('assets/image/imageSignUp.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Create New Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            '    Username',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(
            hintText: 'Enter your name',
          ),
          const SizedBox(height: 8),
          const Text(
            '    Email',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(
            hintText: 'Enter your email',
          ),
          const SizedBox(height: 8),
          const Text(
            '    Password',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(
            hintText: 'Enter your password',
            icon: Icons.visibility_off,
          ),
          const SizedBox(height: 8),
          const Text(
            '    Verify password',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(
            hintText: 'Confirm your password',
            icon: Icons.visibility_off,
          ),
          const SizedBox(height: 8),
          const SizedBox(height: 24),
          Center(
            child: CustomButton(
              text: 'Sign Up',
              onPressed: () {},
              color: primaryColor,
              textColor: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const LoginView();
                    }),
                  );
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  indent: 20,
                  endIndent: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'or log in with',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  endIndent: 20,
                  indent: 10,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const LoginWithIcon(),
        ],
      ),
    );
  }
}
