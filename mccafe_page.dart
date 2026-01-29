import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import 'navigation_drawer.dart';

class McCafePage extends StatelessWidget {
  const McCafePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'McCafe'),
      drawer: const AppNavigationDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          mcCafeItem('Caramel Macchiato', 'assets/cafe/cafe1.png'),
          mcCafeItem('Cappuccino', 'assets/cafe/cafe2.png'),
        ],
      ),
    );
  }

  Widget mcCafeItem(String name, String imagePath) {
    return Card(child: Column(children: [Image.asset(imagePath), Text(name)]));
  }
}
