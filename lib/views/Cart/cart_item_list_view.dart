import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Cart/cart_item.dart';
import 'package:online_courses_app/views/Courses%20Details/course_details_view.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: 3,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CourseDetailsView();
            }));
          },
          child: const CartItem(
            title: 'Programming Basics\nfor Beginners',
            price: '4000',
            image: 'assets/image/categoryImage.png',
          ),
        );
      },
    );
  }
}
