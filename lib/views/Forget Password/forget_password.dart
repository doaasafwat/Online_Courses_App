import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/widgets/custom_button.dart';
import 'package:online_courses_app/widgets/text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            SvgPicture.asset('assets/image/forgetpassword.svg'),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Reset password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Enter your email address \nand we will send you a confirmation code.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextField(hintText: 'Enter your email'),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                text: 'Send',
                onPressed: () {},
                color: primaryColor,
                textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
