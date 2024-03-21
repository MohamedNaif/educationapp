import 'package:educationapp/features/student/presentation/screens/widgets/previous_button.dart';
import 'package:flutter/material.dart';

class QuizHeader extends StatelessWidget {
  const QuizHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        PreviousButton(),
      ],
    );
  }
}
