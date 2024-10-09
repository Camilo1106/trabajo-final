import 'package:flutter/material.dart';

class PhotosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 60),
                Text(
                  'Cultur-E',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(4, (index) {
                      return Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/event${index + 1}.jpg', // Example image paths
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 4),
                            Text('Photo ${index + 1}'),
                          ],
                        ),
                      );
                    }),
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
