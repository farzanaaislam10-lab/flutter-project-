import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String category;
  final String imagePath;

  const CategoryCard({super.key, required this.category, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate based on category
        if (category == 'Burgers') {
          Navigator.pushNamed(context, '/burgerPage');
        } else if (category == 'McCafe') {
          Navigator.pushNamed(context, '/mccafePage');
        }
      },
      child: Card(
        color: Colors.yellow.shade100,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Image.asset(imagePath, width: 150, height: 150, fit: BoxFit.cover),
            const SizedBox(height: 8),
            Text(
              category,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
