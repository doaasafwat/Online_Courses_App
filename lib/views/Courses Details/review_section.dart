
import 'package:flutter/material.dart';
import 'package:online_courses_app/views/Courses%20Details/add_rating_dialog.dart';
import 'package:online_courses_app/views/Courses%20Details/review_card.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ReviewCard(
                  name: 'Majed moussa',
                  rating: index == 1 ? 5.0 : 4.0,
                  date: '12/05/2025',
                  reviewText:
                      'Great course! It covered all the essential of topics in detail and helped me gain a solid understanding',
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 322,
            height: 45,
            child: OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AddRatingDialog();
                  },
                );
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.orange, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Add a Rating',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
