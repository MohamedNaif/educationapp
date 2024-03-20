import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth/finger_print_screen.dart';
import '../auth/login_screen.dart';
import 'user_type.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // Change to nullable type
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () {
        // context.read<NewsAppCubit>().getNewsApp();
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    // FirebaseAuth.instance.currentUser ==
                    //             null &&
                    //         (FirebaseAuth.instance.currentUser?.emailVerified ==
                    //                 false ||
                    //             FirebaseAuth.instance.currentUser?.emailVerified ==
                    //                 null)
                    //     ?
                    UserTypeSelectionScreen()
                // : HomeScreen()

                ));
        //================================================
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 145, 138),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
              'assets/quiz-logo-with-speech-bubble-symbols-concept-of-questionnaire-show-sing-quiz-button-question-competition-png.webp'),
        )),
      ),
    );
  }
}
