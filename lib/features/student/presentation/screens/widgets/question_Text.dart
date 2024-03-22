
import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  const QuestionText({
    super.key, required this.question,
  });
  final String question ;
  @override
  Widget build(BuildContext context) {
    return  CustomContainerDecoration(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12 ,
        vertical: 80),
        child: Text(
          question,
          style: AppStyle.semiBold18,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
