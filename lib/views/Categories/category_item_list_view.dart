import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Categories/category_item.dart';
import 'package:online_courses_app/views/ShowAll/show_all_view.dart';

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
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ShowAllView(
                  title: 'Programming Software',
                );
              }));
            },
            child: const CategoryItem(
              image: 'assets/image/categoryImage.png',
              title: 'Programming\nSoftware',
            ),
          );
        },
      ),
    );
  }
}
