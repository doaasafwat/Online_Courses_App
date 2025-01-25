import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Forget%20Password/forget_password.dart';
import 'package:online_courses_app/views/Notification/notification_view.dart';
import 'package:online_courses_app/views/Profile/profile_headers.dart';
import 'package:online_courses_app/views/Profile/section_profile.dart';
import 'package:online_courses_app/views/Profile/setting_view.dart';
import 'package:online_courses_app/views/Sign%20Up/sign_up_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 243, 250),
        automaticallyImplyLeading: false,
        elevation: 1,
        shadowColor: const Color.fromARGB(255, 224, 243, 250),
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 30,
        ),
        const ProfileHeaders(
          username: 'Nada Salah',
          email: 'Nadasalah45@gmail.com',
          image: 'assets/image/profile.png',
        ),
        const SizedBox(height: 16),
        const Divider(
          color: Color(0xff7A7474),
          endIndent: 10,
          indent: 10,
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              const SectionProfile(title: 'Account Management'),
              const SizedBox(height: 8),
              buildListTile(
                title: 'Setting',
                icon: Icons.settings_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SettingView();
                      },
                    ),
                  );
                },
              ),
              buildListTile(
                title: 'Notifications',
                icon: Icons.notifications_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const NotificationView();
                      },
                    ),
                  );
                },
              ),
              buildListTile(
                title: 'Password',
                icon: Icons.lock_outline,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ForgetPassword();
                      },
                    ),
                  );
                },
              ),
              buildListTile(
                title: 'Log Out',
                icon: Icons.logout,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: const Text(
                          "You'll be signed out of the account",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SignUpView();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text(
                              'Confirm ',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text(
                              'Cancel ',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

Widget buildListTile({
  required String title,
  required IconData icon,
  required VoidCallback onTap,
}) {
  return ListTile(
    leading: Icon(icon, color: Colors.black),
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    ),
    trailing:
        const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black),
    onTap: onTap,
  );
}
