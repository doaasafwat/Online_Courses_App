
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final double rating;
  final String date;
  final String reviewText;

  const ReviewCard({
    super.key,
    required this.name,
    required this.rating,
    required this.date,
    required this.reviewText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.grey, width: 0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/image/profile.png'),
                  radius: 20,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          rating.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Row(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              index < rating ? Icons.star : Icons.star_border,
                              size: 16,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              reviewText,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
