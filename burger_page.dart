import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import 'navigation_drawer.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Burgers'),
      drawer: const AppNavigationDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          burgerItem('Big Mac', 'assets/burger/burger1.png'),
          burgerItem('Quarter Pounder', 'assets/burger/burger2.png'),
        ],
      ),
    );
  }

  Widget burgerItem(String name, String imagePath) {
    return Card(child: Column(children: [Image.asset(imagePath), Text(name)]));
  }
}
