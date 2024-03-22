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
  late int selectedAnswerIndex, currQuestionIndex;
  late QuizBodyCubit blocProvider;
  @override
  void initState() {
    blocProvider = BlocProvider.of<QuizBodyCubit>(context);
    currQuestionIndex = blocProvider.questionIndex;
    selectedAnswerIndex = blocProvider
        .selectedWrongOrRightAnswer[currQuestionIndex]['selectedAnswerIndex']!;
    super.initState();
  }

  void check() {
    setState(() {
      currQuestionIndex = blocProvider.questionIndex;
      selectedAnswerIndex =
          blocProvider.selectedWrongOrRightAnswer[currQuestionIndex]
              ['selectedAnswerIndex']!;
    });
    // print('currQuestionIndex = $currQuestionIndex');
    // print('selectedAnswerIndex =$selectedAnswerIndex') ;
    // print(blocProvider.selectedWrongOrRightAnswer[currQuestionIndex]['selectedAnswerIndex']!);
    print(blocProvider.selectedWrongOrRightAnswer);
  }

  @override
  Widget build(BuildContext context) {
    check();
    print('check') ;
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
                  print('currQuestionIndex = $currQuestionIndex') ;
                  blocProvider.selectedWrongOrRightAnswer[currQuestionIndex]
                      ['selectedAnswerIndex'] = index;
                  blocProvider.selectedWrongOrRightAnswer[currQuestionIndex]
                      ['score'] = widget.correctAnswerIndex == index ? 1 : 0;
                });
                // test() ;
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
  // void test(){
  //   List<Map<String, int>> selectedWrongOrRightAnswer = List.generate(
  //   5,
  //   (index) => {
  //     'selectedAnswerIndex': -1,
  //     'score': 0,
  //   },
  // );

  // selectedWrongOrRightAnswer[1]['score'] = 10;

  // print(selectedWrongOrRightAnswer);
  // }
}
