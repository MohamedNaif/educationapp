import 'package:educationapp/features/student/data/question_model.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/answer_list.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_button.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/question_Text.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/quiz_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuestionBody extends StatelessWidget {
  const QuestionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(50),
          const QuizHeader(),
          const Gap(70),
          QuestionText(question: questionModel.question),
          const Gap(40),
          AnswerListWidget(
            answerList: questionModel.answers,
            correctAnswerIndex: questionModel.correctAnswerIndex,
          ),
          const Gap(50),
          const CustomButton(title: 'Next')
        ],
      ),
    );
  }

  static const QuestionModel questionModel = QuestionModel(
    question:
        'In what year did the United States host the FIFA World Cup for the first time?',
    answers: ['1986', '1994', '2002', '2010'],
    correctAnswerIndex: 1,
  );
}
