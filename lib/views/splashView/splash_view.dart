import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Login/login_view.dart';
import 'package:online_courses_app/views/Sign%20Up/sign_up_view.dart';
import 'package:online_courses_app/widgets/custom_button.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _imageAnimation;
  late Animation<Offset> _topTextAnimation;
  late Animation<Offset> _bottomElementsAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _imageAnimation = Tween<Offset>(
      begin: const Offset(-1.5, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _topTextAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _bottomElementsAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(height: 100),
          SlideTransition(
            position: _topTextAnimation,
            child: const Text(
              'Explore Knowledge\nAnytime\nAnywhere',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 50),
          SlideTransition(
            position: _imageAnimation,
            child: Image.asset('assets/image/logo.png'),
          ),
          const SizedBox(height: 50),
          SlideTransition(
            position: _bottomElementsAnimation,
            child: Column(
              children: [
                const Text(
                  'Welcome!\nChoose a login method to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Log in',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }),
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const SignUpView();
                      }),
                    );
                  },
                  color: const Color.fromARGB(255, 26, 88, 112),
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
