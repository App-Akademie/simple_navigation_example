import 'package:flutter/material.dart';
import 'package:simple_navigation_example/cool_button.dart';
import 'package:simple_navigation_example/details_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 128),
            const Icon(Icons.home, size: 100, color: Colors.blueAccent),
            const SizedBox(height: 20),
            const Text(
              'Welcome to our app!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Click below to see the details screen.',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 30),
            CoolButton(
              onPressed: () {
                // Open an new screen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ),
                );
              },
              child: const Text(
                'Go to Details',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
