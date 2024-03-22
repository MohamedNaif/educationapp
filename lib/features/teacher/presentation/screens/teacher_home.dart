import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'quiz_selection.dart';

import 'select_question.dart';
import 'widget/my_bttn.dart';

class HomeTeacherScreen extends StatelessWidget {
  const HomeTeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/quiz-seamless-pattern-in-doodle-style-illustration-back-to-school-concept-stationery-symbols-on-a-white-background-pattern-hand-drawn-for-print-and-game-quiz-vector.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: const Color.fromARGB(172, 7, 27, 44),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 35.h,
                ),
                Center(
                  child: Text(
                    'Teacher Screen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lato",
                    ),
                  ),
                ),
                SizedBox(
                  height: 200.h,
                ),
                MyElevatedButton(
                  text: 'Publish New Quiz',
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  QuizSelectionScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const QuizScreen(),
            ),
          );
          // Action to add new question
        },
        tooltip: 'Add Question',
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 9, 145, 138),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
