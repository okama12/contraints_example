// Import the necessary Flutter material package for building the UI.
import 'package:flutter/material.dart';

// Import the registration form screen widget.
import 'registration_form.dart';

// Define a stateful widget called SplashScreen.
class SplashScreen extends StatefulWidget {
  // Constructor for SplashScreen, accepting an optional key parameter.
  const SplashScreen({super.key});

  // Create the state for the SplashScreen widget.
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

// Define the state class for the SplashScreen widget.
class _SplashScreenState extends State<SplashScreen> {
  // Override the initState method to perform one-time initialization.
  @override
  void initState() {
    super.initState();
    // Call the method to navigate to the registration form after a delay.
    _navigateToRegistrationForm();
  }

  // Define a method to navigate to the registration form screen after a delay.
  _navigateToRegistrationForm() async {
    // Wait for 3 seconds before navigating.
    await Future.delayed(const Duration(seconds: 3), () {});
    // Navigate to the registration form screen, replacing the current route.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const RegistrationFormScreen()),
    );
  }

  // Override the build method to describe the part of the UI represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Return a Scaffold widget that provides the structure for the splash screen.
    return const Scaffold(
      // Center the child widget within the body of the scaffold.
      body: Center(
        // Display a text widget with the group name.
        child: Text(
          'Group Number 3',
          // Set the font size and weight of the text.
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
