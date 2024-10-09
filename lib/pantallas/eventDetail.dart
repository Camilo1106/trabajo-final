import 'package:flutter/material.dart';

class EventDetailScreen extends StatelessWidget {
  final String eventImage; // Event image passed from the home screen
  final String eventName; // Event name passed from the home screen

  EventDetailScreen({required this.eventImage, required this.eventName});

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
                    'assets/images/Background.jpg'), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 'Cultur-E' text at the top
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
          // White box separated from the 'Cultur-E' text by 12%
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.24, // 12% separation from 'Cultur-E'
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Event image
                  Center(
                    child: Image.asset(
                      eventImage, // Display the passed event image
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  // Event name
                  Center(
                    child: Text(
                      eventName, // Display the passed event name
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                  // Gray box with rounded borders and 7% horizontal margin
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width *
                          0.07, // 7% margin on the sides
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:
                          BorderRadius.circular(15.0), // Rounded borders
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 'Your Order' text
                        Text(
                          'Your Order',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        // 'Total: $50.00' text
                        Text(
                          'Total: \$50.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07),
                        // 'Proceed to Checkout' button inside the gray box
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Implement checkout action here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue, // Blue button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    30.0), // Rounded borders
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 32.0,
                              ),
                            ),
                            child: Text(
                              'Proceed to Checkout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
