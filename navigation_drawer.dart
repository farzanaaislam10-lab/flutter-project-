import 'package:flutter/material.dart';

class AppNavigationDrawer extends StatelessWidget {
  const AppNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Latest Promotion'),
            onTap: () {
              Navigator.pushNamed(context, '/latestPromotions');
            },
          ),
          ListTile(
            title: const Text('Our Menu'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: const Text('Payments'),
            onTap: () {
              Navigator.pushNamed(context, '/paymentPage');
              // Handle action
            },
          ),
          ListTile(
            title: const Text('Login '),
            onTap: () {
              Navigator.pushNamed(context, '/login'); // Handle action
            },
          ),
          ListTile(
            title: const Text('FAQs'),
            onTap: () {
              // Handle action
            },
          ),
        ],
      ),
    );
  }
}
