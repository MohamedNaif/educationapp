import 'package:educationapp/constants.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/quiz_screen_body.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kQuizBackGroundColor,
      body: QuizScreenBody(),
    );
  }
}