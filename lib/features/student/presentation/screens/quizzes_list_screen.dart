import 'package:educationapp/constants.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/quizzes_list_screen_body.dart';
import 'package:flutter/material.dart';

class QuizzesListScreen extends StatelessWidget {
  const QuizzesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBlackBlueSky,
      body: QuizzesListScreenBody(),
    );
  }
}