import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_navigation_example/cool_button.dart';
import 'package:simple_navigation_example/cool_random_number_container.dart';
import 'package:simple_navigation_example/details_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int randomNumber = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 64),
            const Icon(Icons.home, size: 100, color: Colors.blueAccent),
            const SizedBox(height: 24),
            const Text(
              'Welcome to our app!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            CoolRandomNumberContainer(randomNumber: randomNumber),
            const SizedBox(height: 24),
            Text(
              'Click below to set a new random number',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 12),
            CoolButton(
              onPressed: () {
                setState(() {
                  randomNumber = Random().nextInt(100);
                });
              },
              child: const Text(
                'Set new random Number',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Click below to go to the details screen',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 12),
            CoolButton(
              onPressed: () {
                // Open an new screen, provide argument
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      randomNumber: randomNumber,
                    ),
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
