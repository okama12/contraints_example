// Import the necessary Flutter material package for building the UI.
import 'package:flutter/material.dart';

// Import the registration form screen widget.
import 'registration_form.dart';

// Define a stateless widget called NavDrawer.
class NavDrawer extends StatelessWidget {
  // Constructor for NavDrawer, accepting an optional key parameter.
  const NavDrawer({super.key});

  // Override the build method to describe the part of the UI represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Return a Drawer widget that provides a navigation drawer.
    return Drawer(
      // Use a ListView to display the items in the drawer.
      child: ListView(
        // Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        // Define the children widgets for the ListView.
        children: <Widget>[
          // Create a header for the drawer with a background color and text.
          const DrawerHeader(
            // Set the background color of the drawer header.
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 3, 211, 211),
            ),
            // Add text to the drawer header.
            child: Text(
              'Constraints Example',
              style: TextStyle(
                color: Colors.white, // Set the text color to white.
                fontSize: 24, // Set the font size of the text.
              ),
            ),
          ),
          // Create a list tile for navigation with an icon and text.
          ListTile(
            // Add an icon to the list tile.
            leading: const Icon(Icons.exit_to_app, color: Colors.red),
            // Add text to the list tile.
            title: const Text(
              'Back',
              style: TextStyle(
                color: Colors.red, // Set the text color to red.
                fontSize: 18, // Set the font size of the text.
              ),
            ),
            // Define the onTap callback for the list tile.
            onTap: () {
              // Navigate to the registration form screen when the list tile is tapped.
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const RegistrationFormScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
