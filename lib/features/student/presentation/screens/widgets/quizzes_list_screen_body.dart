import 'package:educationapp/features/student/presentation/screens/widgets/quizzes_item_list.dart';
import 'package:flutter/material.dart';

class QuizzesListScreenBody extends StatelessWidget {
  const QuizzesListScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 20),
      child: QuizzesItemList(),
    );
  }
}
