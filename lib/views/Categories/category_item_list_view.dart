import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Categories/category_item.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return const CategoryItem(
            image: 'assets/image/categoryImage.png',
            title: 'Programming\nSoftware',
          );
        },
      ),
    );
  }
}
