import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/score_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScoreBody extends StatelessWidget {
  const ScoreBody({super.key});



  @override
  Widget build(BuildContext context) {
  
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const Gap(50),
          const ScoreHeader(),
          const Gap(150),
          CustomContainerDecoration(
            child: Column(
              children: [
                const Gap(30),
                Text('Student Name', style: AppStyle.semiBold24.copyWith(color: Colors.black)),
                const Gap(20),
                Text('2/3', style: AppStyle.semiBold24.copyWith(color: Colors.black)),
                const Gap(30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
