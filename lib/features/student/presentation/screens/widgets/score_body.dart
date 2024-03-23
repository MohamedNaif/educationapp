import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/manager/quiz_body_cubit/quiz_body_cubit.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/score_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ScoreBody extends StatelessWidget {
  const ScoreBody({super.key});

  int getScore(context) {
    int score = 0;
    for (var element
        in BlocProvider.of<QuizBodyCubit>(context).selectedWrongOrRightAnswer) {
      score += element['score']!;
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    int score = getScore(context);
    int totalScore =
        BlocProvider.of<QuizBodyCubit>(context).questionModelList.length;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const Gap(50),
          const ScoreHeader(),
          const Gap(80),
          CustomContainerDecoration(
            child: Column(
              children: [
                const Text('Student Name', style: AppStyle.semiBold20),
                const Gap(20),
                Text('$score/$totalScore', style: AppStyle.semiBold20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
