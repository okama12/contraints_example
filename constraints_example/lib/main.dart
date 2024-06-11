// Importing necessary packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'splash_screen.dart';
import 'registration_form.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

// The main widget of the application
class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    // Using ChangeNotifierProvider for state management
    return ChangeNotifierProvider(
      create: (context) => RegistrationFormProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Remove debug label
        title: 'Constraints Example',
        home: SplashScreen(), // Starting screen of the app
      ),
    );
  }
}
