import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_radio.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/non_selected_answer_item.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/selected_answer_item.dart';
import 'package:flutter/material.dart';

class AnswerListWidget extends StatelessWidget {
  const AnswerListWidget({super.key, required this.answerList, required this.correctAnswerIndex});
  final List < String > answerList ;
  final int correctAnswerIndex ;
  @override
  Widget build(BuildContext context) {
    return const SelectedAnswerItem();
  }
}
