import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/manager/quiz_body_cubit/quiz_body_cubit.dart';
import 'package:educationapp/features/student/presentation/screens/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });
  int getStudentScore(context) {
    int score = 0;
    for (var element
        in BlocProvider.of<QuizBodyCubit>(context).selectedWrongOrRightAnswer) {
      score += element['score']!;
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    QuizBodyCubit blocProvider = BlocProvider.of<QuizBodyCubit>(context);
    int questionIndex = blocProvider.questionIndex;
    int totalQuestionNum = blocProvider.questionModelList.length;
    String title = (questionIndex == totalQuestionNum - 1) ? "Submit" : 'Next';
    return GestureDetector(
      onTap: () {
        if (questionIndex == totalQuestionNum - 1) {
          int studentScore = getStudentScore(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ScoreScreen(
                studentScore: studentScore,
                totalScore: totalQuestionNum,
              ),
            ),
          );
        } else {
          blocProvider.nextQuestion();
        }
      },
      child: Container(
        height: 73,
        width: double.infinity,
        decoration: ShapeDecoration(
          color: const Color(0xFF004643),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Text(title, style: AppStyle.semiBold24),
        ),
      ),
    );
  }
}
