// Home Screen implementation
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'registration_form.dart';
import 'navDrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Accessing the provider to get form data
    final formProvider = Provider.of<RegistrationFormProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 450, // Set the desired height for the card
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                  children: [
                    ListTile(
                      title: Text('First Name: ${formProvider.firstName}', style: const TextStyle(fontSize: 18)),
                    ),
                    ListTile(
                      title: Text('Middle Name: ${formProvider.middleName}', style: const TextStyle(fontSize: 18)),
                    ),
                    ListTile(
                      title: Text('Last Name: ${formProvider.lastName}', style: const TextStyle(fontSize: 18)),
                    ),
                    ListTile(
                      title: Text('Gender: ${formProvider.gender}', style: const TextStyle(fontSize: 18)),
                    ),
                    ListTile(
                      title: Text('Email: ${formProvider.email}', style: const TextStyle(fontSize: 18)),
                    ),
                    ListTile(
                      title: Text('Phone: ${formProvider.phone}', style: const TextStyle(fontSize: 18)),
                    ),
                    ListTile(
                      title: Text('Country of Birth: ${formProvider.countryOfBirth}', style: const TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16), // Add some spacing between the card and the button
            ElevatedButton(
              onPressed: () {
                formProvider.clearForm(); // Clear form data when button is pressed
              },
              child: const Text('Clear Form'),
            ),
          ],
        ),
      ),
    );
  }
}
