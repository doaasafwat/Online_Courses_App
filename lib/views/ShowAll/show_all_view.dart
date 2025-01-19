import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';
import 'package:online_courses_app/views/ShowAll/show_all_list_view.dart';

class ShowAllView extends StatelessWidget {
  const ShowAllView({Key? key, required this.title}) : super(key: key);
  final String title;
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
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          children: [
             SizedBox(height: 8),
            Expanded(
              child: ShowAllListView(),
            ),
          ],
        ),
      ),
    );
  }
}
