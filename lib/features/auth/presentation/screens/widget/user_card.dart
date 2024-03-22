import 'package:flutter/material.dart';

import '../../../../student/presentation/screens/quiz_screen.dart';
// import '../../../../teacher/presentation/screens/teacher_home.dart';
import '../finger_print_screen.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(16), // Add margin to the card
        child: Padding(
          padding: const EdgeInsets.all(16), // Add padding to the card content
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
                              builder: (context) => const QuizScreen()));
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
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const HomeTeacherScreen()));
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
    );
  }
}
