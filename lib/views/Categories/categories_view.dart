import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/Categories/category_item_list_view.dart';
import 'package:online_courses_app/widgets/search_bar.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

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
          'Category',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomSearchBar(),
            SizedBox(
              height: 16,
            ),
            CategoryItemListView()
          ],
        ),
      ),
    );
  }
}
