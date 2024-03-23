import 'package:educationapp/features/student/presentation/screens/quiz_screen.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/quiz_item.dart';
import 'package:flutter/material.dart';

class QuizzesItemList extends StatelessWidget {
  const QuizzesItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizScreen()));
          },
          child: QuizItem(
              quizName: 'quiz ${index + 1}', deadline: '1/1/2024 at 09:00 PM'),
        ),
      ),
    );
  }
}
