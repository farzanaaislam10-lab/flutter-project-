import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart'; // Custom AppBar widget
import 'navigation_drawer.dart'; // Navigation Drawer widget

class PaymentPage extends StatelessWidget {
  PaymentPage({super.key});

  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expirationController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Payment'),
      drawer: const AppNavigationDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Payment',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: cardNumberController,
              decoration: const InputDecoration(
                labelText: 'Card Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: expirationController,
                    decoration: const InputDecoration(
                      labelText: 'Expiration Date',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: cvvController,
                    decoration: const InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle payment confirmation
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Payment Confirmed!')));
              },
              child: const Text('Confirm Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
