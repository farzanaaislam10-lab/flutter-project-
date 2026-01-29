import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart'; // Custom AppBar widget
import 'navigation_drawer.dart'; // Navigation Drawer widget

class LatestPromotionsPage extends StatelessWidget {
  const LatestPromotionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Latest Promotions'),
      drawer: const AppNavigationDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Latest Promotion',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/promotion_image.jpg',
                  ), // Replace with actual image path
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Free Big Mac with \$1 min. purchase when you download the McD\'s app!',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Earn 6000 points to redeem this offer. Limited time only!',
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the action for this promotion (e.g., redeem)
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Promotion Redeemed!')),
                      );
                    },
                    child: const Text('Redeem Now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
