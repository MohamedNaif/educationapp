import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/manager/quiz_body_cubit/quiz_body_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<QuizBodyCubit>(context).previosQuestion() ;
      },
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: Colors.black,
          ),
          Text('previous', style: AppStyle.semiBold12),
        ],
      ),
    );
  }
}
