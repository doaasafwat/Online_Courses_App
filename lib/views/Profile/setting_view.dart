import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Profile/profile_headers.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 243, 250),
        elevation: 1,
        shadowColor: const Color.fromARGB(255, 224, 243, 250),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Setting',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const ProfileHeaders(
            username: 'Nada Salah',
            email: 'Nadasalah45@gmail.com',
            image: 'assets/image/profile.png',
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              buildListTile(
                title: 'Security',
                subtitle: 'Secure your account with enhanced options',
                icon: Icons.security_outlined,
                onTap: () {},
              ),
              buildListTile(
                title: 'Privacy',
                subtitle: 'Secure your account with enhanced options',
                icon: Icons.privacy_tip_outlined,
                onTap: () {},
              ),
              buildListTile(
                title: 'Two-factor Authentication',
                subtitle: 'Secure your login with verification code',
                icon: Icons.verified_user_outlined,
                onTap: () {},
              ),
              buildListTile(
                title: 'Help & Support',
                subtitle: 'Find assistance or report an issue',
                icon: Icons.help_outline,
                onTap: () {},
              ),
              buildListTile(
                title: 'Terms & Policies',
                subtitle: 'Manages the platform’s terms of use and privacy',
                icon: Icons.policy_outlined,
                onTap: () {},
              ),
              buildListTile(
                title: 'Backup & Restore',
                subtitle: 'Restore your data with regular backup',
                icon: Icons.backup_outlined,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildListTile({
  required String title,
  required String subtitle,
  required IconData icon,
  required VoidCallback onTap,
}) {
  return Column(
    children: [
      ListTile(
        leading: SizedBox(
          width: 30,
          height: 30,
          child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 145, 195, 146),
              child: Icon(icon, size: 20, color: Colors.black)),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        trailing:
            const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black),
        onTap: onTap,
      ),
    ],
  );
}
