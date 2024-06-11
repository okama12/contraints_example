// Registration Form Screen implementation
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'package:country_list_pick/country_list_pick.dart';

// RegistrationFormProvider handles the state of the form
class RegistrationFormProvider extends ChangeNotifier {
  // Form fields
  String firstName = '';
  String middleName = '';
  String lastName = '';
  String gender = '';
  String email = '';
  String phone = '';
  String countryOfBirth = '';

  // Method to clear the form
  void clearForm() {
    firstName = '';
    middleName = '';
    lastName = '';
    gender = '';
    email = '';
    phone = '';
    countryOfBirth = '';
    notifyListeners(); // Notify listeners about the state change
  }

  // Update methods for each form field
  void updateFirstName(String value) {
    firstName = value;
    notifyListeners();
  }

  void updateMiddleName(String value) {
    middleName = value;
    notifyListeners();
  }

  void updateLastName(String value) {
    lastName = value;
    notifyListeners();
  }

  void updateGender(String value) {
    gender = value;
    notifyListeners();
  }

  void updateEmail(String value) {
    email = value;
    notifyListeners();
  }

  void updatePhone(String value) {
    phone = value;
    notifyListeners();
  }

  void updateCountryOfBirth(String value) {
    countryOfBirth = value;
    notifyListeners();
  }
}

class RegistrationFormScreen extends StatelessWidget {
  const RegistrationFormScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('First Name', style: TextStyle(fontSize: 16)),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your first name',
                        border: OutlineInputBorder(),
                      ),
                      // Update first name in the provider
                      onChanged: (value) => context
                          .read<RegistrationFormProvider>()
                          .updateFirstName(value),
                    ),
                    const SizedBox(height: 10),
                    const Text('Middle Name', style: TextStyle(fontSize: 16)),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your middle name',
                        border: OutlineInputBorder(),
                      ),
                      // Update middle name in the provider
                      onChanged: (value) => context
                          .read<RegistrationFormProvider>()
                          .updateMiddleName(value),
                    ),
                    const SizedBox(height: 10),
                    const Text('Last Name', style: TextStyle(fontSize: 16)),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your last name',
                        border: OutlineInputBorder(),
                      ),
                      // Update last name in the provider
                      onChanged: (value) => context
                          .read<RegistrationFormProvider>()
                          .updateLastName(value),
                    ),
                    const SizedBox(height: 10),
                    const Text('Gender', style: TextStyle(fontSize: 16)),
                    DropdownButtonFormField<String>(
                      value: context
                              .watch<RegistrationFormProvider>()
                              .gender
                              .isNotEmpty
                          ? context.watch<RegistrationFormProvider>().gender
                          : '',
                      // Update gender in the provider
                      onChanged: (value) => context
                          .read<RegistrationFormProvider>()
                          .updateGender(value!),
                      items: <String>['', 'Male', 'Female']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 10),
                    const Text('Email Address', style: TextStyle(fontSize: 16)),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your email address',
                        border: OutlineInputBorder(),
                      ),
                      // Update email in the provider
                      onChanged: (value) => context
                          .read<RegistrationFormProvider>()
                          .updateEmail(value),
                    ),
                    const SizedBox(height: 10),
                    const Text('Phone Number', style: TextStyle(fontSize: 16)),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your phone number',
                        border: OutlineInputBorder(),
                      ),
                      // Update phone number in the provider
                      onChanged: (value) => context
                          .read<RegistrationFormProvider>()
                          .updatePhone(value),
                    ),
                    const SizedBox(height: 10),
                    const Text('Country of Birth', style: TextStyle(fontSize: 16)),
                    CountryListPick(
                      // Update country of birth in the provider
                      onChanged: (CountryCode? countryCode) {
                        context
                            .read<RegistrationFormProvider>()
                            .updateCountryOfBirth(countryCode?.name ?? '');
                      },
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 20),
                    // Responsive design: the container will animate its width and height changes
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 400,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to home screen after form submission
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
