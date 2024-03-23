import 'package:educationapp/constants.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/score_body.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen(
      {super.key, required this.studentScore, required this.totalScore});
  final int studentScore, totalScore;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackBlueSky,
      body: ScoreBody(
        studentScore: studentScore,
        totalScore: totalScore,
      ),
    );
  }
}
