import 'package:educationapp/features/student/presentation/screens/widgets/score_header.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/show_score.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScoreBody extends StatelessWidget {
  const ScoreBody({super.key, required this.studentScore, required this.totalScore});
  final int studentScore , totalScore ;



  @override
  Widget build(BuildContext context) {
  
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const Gap(50),
          const ScoreHeader(),
          const Gap(150),
          ShowScore(studentScore: studentScore, totalScore: totalScore)
        ],
      ),
    );
  }
}

