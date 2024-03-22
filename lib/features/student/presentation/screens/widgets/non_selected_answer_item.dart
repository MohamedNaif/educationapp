
import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_radio.dart';
import 'package:flutter/material.dart';

class NonSelectedAnswerItem extends StatelessWidget {
  const NonSelectedAnswerItem({
    super.key, required this.answerText,
  });
  final String answerText ;
  @override
  Widget build(BuildContext context) {
    return  CustomContainerDecoration(
      child: ListTile(
        title: Text(answerText, style: AppStyle.semiBold20),
        trailing: const CustomRadio(correctChoice: false),
      ),
    );
  }
}
