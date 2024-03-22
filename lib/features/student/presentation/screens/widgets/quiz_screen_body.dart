import 'package:educationapp/features/student/presentation/manager/quiz_body_cubit/quiz_body_cubit.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_circular_indicator.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/question_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizScreenBody extends StatelessWidget {
  const QuizScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SizedBox(
          width: double.infinity,
          child: BlocBuilder<QuizBodyCubit, QuizBodyState>(
            builder: (context, state) {
              if (state is QuizBodySuccess) {
                return const QuestionBody();
              } else if (state is QuizBodyLoading) {
                return const CustomCircularIndicator();
              } else {
                return const Placeholder();
              }
            },
          ),
        ),
      ),
    );
  }
}

