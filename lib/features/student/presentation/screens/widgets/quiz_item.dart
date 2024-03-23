import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:flutter/material.dart';

class QuizItem extends StatelessWidget {
  const QuizItem({super.key, required this.quizName, required this.deadline});
  final String quizName , deadline;
  @override
  Widget build(BuildContext context) {
    return CustomContainerDecoration(
      child: ListTile(
        title: Text(quizName, style: AppStyle.semiBold20),
        trailing: Text(deadline, style: AppStyle.semiBold20),
      ),
    );
  }
}