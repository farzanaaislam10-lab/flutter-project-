import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import 'navigation_drawer.dart';
import '../widgets/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Home Page'),
      drawer: const AppNavigationDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/logo.png',
            ), // Replace with the logo image
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const CategoryCard(
                category: 'Burgers',
                imagePath: 'assets/burger/burger1.png',
              ),
              const CategoryCard(
                category: 'McCafe',
                imagePath: 'assets/cafe/cafe1.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
