import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/latest_promotions.dart';
import 'screens/burger_page.dart';
import 'screens/mccafe_page.dart';
import 'screens/payment_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'McDonald\'s App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => LoginPage(),
        '/latestPromotions': (context) => const LatestPromotionsPage(),
        '/burgerPage': (context) => const BurgerPage(),
        '/mccafePage': (context) => const McCafePage(),
        '/paymentPage': (context) => PaymentPage(),
      },
    );
  }
}
