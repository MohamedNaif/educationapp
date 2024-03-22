import 'package:educationapp/features/student/presentation/screens/widgets/score_body.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF638D8B),
      body: ScoreBody() ,
    );
  }
}
