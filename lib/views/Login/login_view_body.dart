import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Forget%20Password/forget_password.dart';
import 'package:online_courses_app/views/Home/home_view.dart';
import 'package:online_courses_app/views/Login/LoginWithIcon.dart';
import 'package:online_courses_app/views/Sign%20Up/sign_up_view.dart';
import 'package:online_courses_app/widgets/custom_button.dart';
import 'package:online_courses_app/widgets/text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            child: Image.asset('assets/image/imageLogin.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Welcome back',
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
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const ForgetPassword();
                }),
              );
            },
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password ?     ',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Center(
            child: CustomButton(
              text: 'Log In',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const HomeView();
                    }),
                  );
              },
              color: primaryColor,
              textColor: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Join us!',
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const SignUpView();
                    }),
                  );
                },
                child: const Text(
                  'Create an account',
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
