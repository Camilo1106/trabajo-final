import 'package:flutter/material.dart';
import 'eventDetail.dart'; // Import the EventDetailScreen
import 'photos.dart'; // Import the Photos page
import 'videos.dart'; // Import the Videos page

class HomeScreen extends StatelessWidget {
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
          // 4 buttons (2 columns, 2 rows)
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton(context, 'Events', () {
                      // Logic for Events button (not implemented in this example)
                    }),
                    buildButton(context, 'Videos', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VideosPage()),
                      );
                    }),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton(context, 'Photos', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhotosPage()),
                      );
                    }),
                    buildButton(context, 'Share', () {
                      // Logic for Share button (not implemented in this example)
                    }),
                  ],
                ),
              ],
            ),
          ),
          // Scrollable white box with event details
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Event details text
                  Text(
                    'Event details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Scrollable content (3x4 grid with images and event text)
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          buildEventGrid(context),
                        ],
                      ),
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

  // Button builder method
  Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Red background
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Circular borders
        ),
        fixedSize: Size(
          MediaQuery.of(context).size.width * 0.35, // Button width
          MediaQuery.of(context).size.height * 0.12, // Button height
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  // Grid of event images and descriptions
  Widget buildEventGrid(BuildContext context) {
    return Column(
      children: [
        buildEventRow(
            context,
            ['assets/images/event1.jpg', 'Event 1'],
            ['assets/images/event2.jpg', 'Event 2'],
            ['assets/images/event3.jpg', 'Event 3']),
        SizedBox(height: 16),
        buildEventRow(
            context,
            ['assets/images/event4.jpg', 'Event 4'],
            ['assets/images/event1.jpg', 'Event 5'],
            ['assets/images/event2.jpg', 'Event 6']),
        SizedBox(height: 16),
        buildEventRow(
            context,
            ['assets/images/event3.jpg', 'Event 7'],
            ['assets/images/event4.jpg', 'Event 8'],
            ['assets/images/event1.jpg', 'Event 9']),
        SizedBox(height: 16),
        buildEventRow(
            context,
            ['assets/images/event2.jpg', 'Event 10'],
            ['assets/images/event3.jpg', 'Event 11'],
            ['assets/images/event4.jpg', 'Event 12']),
      ],
    );
  }

  // Helper method to build a row of event images and descriptions
  Widget buildEventRow(BuildContext context, List<String> event1,
      List<String> event2, List<String> event3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildEventItem(context, event1[0], event1[1]),
        buildEventItem(context, event2[0], event2[1]),
        buildEventItem(context, event3[0], event3[1]),
      ],
    );
  }

  // Helper method to build an event item with image and text
  Widget buildEventItem(
      BuildContext context, String imagePath, String eventText) {
    return GestureDetector(
      onTap: () {
        // Navigate to the EventDetailScreen with event data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailScreen(
              eventImage: imagePath, // Pass the event image
              eventName: eventText, // Pass the event name
            ),
          ),
        );
      },
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            eventText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
