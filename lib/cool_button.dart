import 'package:flutter/material.dart';

class CoolButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const CoolButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.blueAccent, Colors.lightBlue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          backgroundColor: Colors.transparent, // Transparent to show gradient
          shadowColor: Colors.transparent, // Remove default shadow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
