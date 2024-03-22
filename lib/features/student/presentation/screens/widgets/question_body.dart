import 'package:educationapp/features/student/data/models/question_model.dart';
import 'package:educationapp/features/student/presentation/manager/quiz_body_cubit/quiz_body_cubit.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/answer_list.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_button.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/question_Text.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/quiz_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class QuestionBody extends StatelessWidget {
  const QuestionBody({super.key});

  @override
  Widget build(BuildContext context) {
    QuizBodyCubit blocProvider = BlocProvider.of<QuizBodyCubit>(context);
    int questionIndex = blocProvider.questionIndex;
    QuestionModel questionModel = blocProvider.questionModel[questionIndex];
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(50),
          // ignore: prefer_const_constructors
          QuizHeader(),  // don't make it const because its body will be change
          const Gap(70),
          QuestionText(question: questionModel.question),
          const Gap(40),
          AnswerListWidget(
            answerList: questionModel.answers,
            correctAnswerIndex: questionModel.correctAnswerIndex,
          ),
          const Gap(50),
          const CustomButton(
            
          )
        ],
      ),
    );
  }

  // static const QuestionModel questionModel = QuestionModel(
  //   question:
  //       'In what year did the United States host the FIFA World Cup for the first time?',
  //   answers: ['1986', '1994', '2002', '2010'],
  //   correctAnswerIndex: 1,
  // );
}
