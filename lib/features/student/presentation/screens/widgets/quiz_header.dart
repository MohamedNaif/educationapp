import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/manager/quiz_body_cubit/quiz_body_cubit.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/previous_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizHeader extends StatelessWidget {
  const QuizHeader({super.key});

  @override
  Widget build(BuildContext context) {
    QuizBodyCubit blocProvider = BlocProvider.of<QuizBodyCubit>(context);
    int questionIndex = blocProvider.questionIndex;
    int totalQuestionNum = blocProvider.questionModelList.length;
    return  Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(child: PreviousButton()),
        Center(
          child: Text('${questionIndex + 1}/$totalQuestionNum', style: AppStyle.semiBold18),
        ),
        const Spacer(),
      ],
    );
  }
}
