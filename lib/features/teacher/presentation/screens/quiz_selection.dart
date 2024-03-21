


import 'package:flutter/material.dart';

class QuizSelectionScreen extends StatelessWidget {
  const QuizSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Selection'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Question and Time Here',
              style: TextStyle(fontSize: 20),
            ),
            // Add widgets for selecting question and time here
          ],
        ),
      ),
    );
  }
}