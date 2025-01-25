
import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Notification/notification_card.dart';
import 'package:online_courses_app/views/Notification/notification_section.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        NotificationSection(
          title: "Today",
          notifications: [
            NotificationCard(
              title: "News Features",
              description:
                  "A new feature has been added to the app. Don't forget to use it now.",
              time: "24m",
            ),
            NotificationCard(
              title: "News Features",
              description:
                  "A new feature has been added to the app. Don't forget to use it now.",
              time: "24m",
            ),
          ],
        ),
        SizedBox(height: 16),
        NotificationSection(
          title: "Yesterday",
          notifications: [
            NotificationCard(
              title: "News Features",
              description:
                  "A new feature has been added to the app. Don't forget to use it now.",
              time: "24m",
            ),
            NotificationCard(
              title: "News Features",
              description:
                  "A new feature has been added to the app. Don't forget to use it now.",
              time: "24m",
            ),
          ],
        ),
      ],
    );
  }
}
