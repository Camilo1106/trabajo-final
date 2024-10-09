import 'package:flutter/material.dart';
import 'login.dart'; // Import the LoginScreen

class IngresoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/Background.jpg'), // Add your image here
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 'Cultur-E' text at the top center with 12% separation
          Positioned(
            top: MediaQuery.of(context).size.height * 0.12,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Cultur-E',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 62,
                ),
              ),
            ),
          ),
          // Login button
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.10,
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the login screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Red background
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Circular borders
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0), // Button height
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          // Bottom texts 'Don't have an account?' and 'Sign Up'
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.02,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 4), // Small gap between text and link
                GestureDetector(
                  onTap: () {
                    // Sign up action
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
