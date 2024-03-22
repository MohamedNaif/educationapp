import 'package:educationapp/constants.dart';
import 'package:educationapp/features/student/presentation/manager/quiz_body_cubit/quiz_body_cubit.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/quiz_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kQuizBackGroundColor,
      body: BlocProvider(
        create: (context) => QuizBodyCubit(),
        child: const QuizScreenBody(),
      ),
    );
  }
}
