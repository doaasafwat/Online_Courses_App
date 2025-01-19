import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Cart/cart_item_list_view.dart';
import 'package:online_courses_app/widgets/custom_button.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

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
          'Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(child: CartItemListView()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: backgroundColor,
            child: Column(
              children: [
                CustomButton(
                  text: 'Total : 8300 EGP',
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Buy Now',
                  onPressed: () {},
                  color: primaryColor,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
