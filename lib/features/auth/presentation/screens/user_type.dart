import 'package:flutter/material.dart';

import 'finger_print_screen.dart';

class UserTypeSelectionScreen extends StatelessWidget {
  const UserTypeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/quiz-seamless-pattern-in-doodle-style-illustration-back-to-school-concept-stationery-symbols-on-a-white-background-pattern-hand-drawn-for-print-and-game-quiz-vector.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Container(
              color: const Color.fromARGB(108, 0, 0, 0),
            ),
            Center(
              child: Card(
                margin: const EdgeInsets.all(16), // Add margin to the card
                child: Padding(
                  padding: const EdgeInsets.all(
                      16), // Add padding to the card content
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Set main axis size to min
                    children: <Widget>[
                      const Text(
                        'Are you a student or a teacher?',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black), // Set text color to white
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FingerPrint()));
                              // Handle student button press
                              // You can navigate to the student registration screen here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color.fromARGB(
                                  255, 9, 145, 138), // Set text color to white
                            ),
                            child: const Text('Student'),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FingerPrint()));
                              // Handle teacher button press
                              // You can navigate to the teacher registration screen here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color.fromARGB(
                                  255, 9, 145, 138), // Set text color to white
                            ),
                            child: const Text('Teacher'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
