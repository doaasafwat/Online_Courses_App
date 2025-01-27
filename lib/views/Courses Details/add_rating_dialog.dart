
import 'package:flutter/material.dart';

class AddRatingDialog extends StatelessWidget {
  const AddRatingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image/profile.png'),
                  radius: 20,
                ),
                SizedBox(width: 12),
                Text(
                  'Mouhammed eras',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                5,
                (index) => IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    color: index < 4 ? Colors.amber : Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Description',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: OutlinedButton(
                onPressed: () {},
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
      ),
    );
  }
}
