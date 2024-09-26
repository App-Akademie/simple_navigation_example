import 'package:flutter/material.dart';
import 'package:simple_navigation_example/cool_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 128),
            const Icon(Icons.info, size: 100, color: Colors.green),
            const SizedBox(height: 20),
            const Text(
              'Details Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Here you can find more information.',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 30),
            CoolButton(
              onPressed: () {
                // Close the current screen
                Navigator.of(context).pop();
              },
              child: const Text(
                'Back to Welcome',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
