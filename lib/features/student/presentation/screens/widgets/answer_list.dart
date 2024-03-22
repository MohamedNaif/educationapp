import 'package:educationapp/features/student/presentation/manager/quiz_body_cubit/quiz_body_cubit.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/non_selected_answer_item.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/selected_answer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerListWidget extends StatefulWidget {
  const AnswerListWidget(
      {super.key, required this.answerList, required this.correctAnswerIndex});
  final List<String> answerList;
  final int correctAnswerIndex;

  @override
  State<AnswerListWidget> createState() => _AnswerListWidgetState();
}

class _AnswerListWidgetState extends State<AnswerListWidget> {
  int selectedAnswerIndex = -1;
  int currQuestionIndex = 0 ;
  void check(){
    QuizBodyCubit blocProvider = BlocProvider.of<QuizBodyCubit>(context) ;
    if ( currQuestionIndex != blocProvider.questionIndex){
      setState(() {
        selectedAnswerIndex = -1 ;
        currQuestionIndex = blocProvider.questionIndex ;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    check() ;
    return Column(
      children: widget.answerList.asMap().entries.map((e) {
        int index = e.key;
        String answerText = e.value;
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: GestureDetector(
            onTap: () {
              if (index != selectedAnswerIndex) {
                setState(() {
                  selectedAnswerIndex = index;
                });
              }
            },
            child: index == selectedAnswerIndex
                ? SelectedAnswerItem(answerText: answerText)
                : NonSelectedAnswerItem(answerText: answerText),
          ),
        );
      }).toList(),
    );
  }
}
