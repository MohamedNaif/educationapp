import 'package:educationapp/features/student/presentation/screens/widgets/question_body.dart';
import 'package:flutter/material.dart';
class QuizScreenBody extends StatelessWidget {
  const QuizScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal : 12.0),
        child: SizedBox(
          width: double.infinity,
          child: QuestionBody(),
        ),
      ),
    );
  }
}
