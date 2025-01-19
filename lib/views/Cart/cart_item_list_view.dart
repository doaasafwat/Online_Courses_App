import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Cart/cart_item.dart';

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
        return const CartItem(
          title: 'Programming Basics\nfor Beginners',
          price: '4000',
          image: 'assets/image/categoryImage.png',
        );
      },
    );
  }
}
