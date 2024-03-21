import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/previous_button.dart';
import 'package:flutter/material.dart';

class QuizHeader extends StatelessWidget {
  const QuizHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(child: PreviousButton()),
        Center(
          child: Text('3/10', style: AppStyle.semiBold18),
        ),
        Spacer(),
      ],
    );
  }
}
