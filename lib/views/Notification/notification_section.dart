import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Notification/notification_card.dart';

class NotificationSection extends StatelessWidget {
  final String title;
  final List<NotificationCard> notifications;

  const NotificationSection({
    Key? key,
    required this.title,
    required this.notifications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xff787878),
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Divider(
                color: Color(0xff777777),
                thickness: 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ...notifications,
      ],
    );
  }
}
