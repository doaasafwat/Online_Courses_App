import 'package:flutter/material.dart';
import 'package:online_courses_app/const.dart';

class LessonTile extends StatelessWidget {
  final String title;
  final String duration;
  final VoidCallback onDownload;
  final VoidCallback onPlay;
  final String noLesson;
  const LessonTile({
    required this.title,
    required this.duration,
    required this.onDownload,
    required this.onPlay,
    required this.noLesson,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              border: Border.all(
                color: primaryColor,
                width: 1,
              ),
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16)),
          child: Center(
              child: Text(
            noLesson,
            style: const TextStyle(color: primaryColor),
          ))),
      title: Text(title,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14,
            color: primaryColor,
          )),
      subtitle: Text(duration,
          style: const TextStyle(fontSize: 12, color: Colors.grey)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(
              Icons.download_outlined,
              color: primaryColor,
              size: 28,
            ),
            onPressed: onDownload,
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
