import 'package:educationapp/constants.dart';
import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/quizzes_list_screen_body.dart';
import 'package:flutter/material.dart';

class QuizzesListScreen extends StatelessWidget {
  const QuizzesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackBlueSky,
      appBar: AppBar(
        backgroundColor: kBlackBlueSky,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        centerTitle: true,
        title: Text(
          'Quizzes',
          style: AppStyle.semiBold24.copyWith(color: Colors.white),
        ),
      ),
      body: const QuizzesListScreenBody(),
    );
  }
}
