
import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_radio.dart';
import 'package:flutter/material.dart';

class SelectedAnswerItem extends StatelessWidget {
  const SelectedAnswerItem({
    super.key, required this.answerText,
  });
  final String answerText ;
  @override
  Widget build(BuildContext context) {
    return  CustomContainerDecoration(
      backgroundColor: const Color(0xFFABD1C6),
      child: ListTile(
        title: Text(answerText, style: AppStyle.semiBold20.copyWith(color: const Color(0xFF407A74))),
        trailing: const CustomRadio(correctChoice: true),
      ),
    );
  }
}