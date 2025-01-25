import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Cart/cart_view.dart';
import 'package:online_courses_app/views/Categories/categories_view.dart';
import 'package:online_courses_app/views/Home/home_view_body.dart';
import 'package:online_courses_app/views/Notification/notification_view.dart';
import 'package:online_courses_app/views/Profile/profile_view.dart';
import 'package:online_courses_app/views/courses/courses_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  bool _isCentralIconPressed = false;

  final List<Widget> _pages = [
    const HomeViewBody(),
    const CategoriesView(),
    const CoursesView(),
    const CartView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: _currentIndex == 0
          ? AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: backgroundColor,
              title: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image/profile.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Welcome, Nada Salah',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const NotificationView();
                            },
                          ),
                        );
                      },
                      icon: const Icon(Icons.notifications_outlined,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          : null,
      body: _pages[_currentIndex],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  if (index != 2) {
                    _isCentralIconPressed = false;
                    _currentIndex = index;
                  }
                });
              },
              backgroundColor: Colors.white,
              selectedItemColor:
                  _isCentralIconPressed ? Colors.grey : primaryColor,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 14,
              unselectedFontSize: 12,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: _isCentralIconPressed && _currentIndex != 0
                        ? Colors.grey
                        : null,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category_outlined,
                    color: _isCentralIconPressed && _currentIndex != 1
                        ? Colors.grey
                        : null,
                  ),
                  label: 'Categories',
                ),
                const BottomNavigationBarItem(
                  icon: SizedBox.shrink(),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: _isCentralIconPressed && _currentIndex != 3
                        ? Colors.grey
                        : null,
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    color: _isCentralIconPressed && _currentIndex != 4
                        ? Colors.grey
                        : null,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
          Positioned(
            top: -30,
            left: MediaQuery.of(context).size.width / 2 - 35,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isCentralIconPressed = true;
                      _currentIndex = 2;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
