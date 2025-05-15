import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the LoginPage

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to navigate to the login page after the splash screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginPage()), // Navigate to LoginPage
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'lib/assets/images.png', // Make sure this path is correct for your assets
          width: 200,
        ),
      ),
    );
  }
}
