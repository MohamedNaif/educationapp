import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShowScore extends StatelessWidget {
  const ShowScore({
    super.key,
    required this.studentScore,
    required this.totalScore,
  });

  final int studentScore;
  final int totalScore;

  @override
  Widget build(BuildContext context) {
    return CustomContainerDecoration(
      child: Column(
        children: [
          const Gap(30),
          Text('Student Name', style: AppStyle.semiBold24.copyWith(color: Colors.black)),
          const Gap(20),
          Text('$studentScore/$totalScore', style: AppStyle.semiBold24.copyWith(color: Colors.black)),
          const Gap(30),
        ],
      ),
    );
  }
}
