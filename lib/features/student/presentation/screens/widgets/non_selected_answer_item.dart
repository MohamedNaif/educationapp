
import 'package:educationapp/core/utils/app_style.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_container_decoration.dart';
import 'package:educationapp/features/student/presentation/screens/widgets/custom_radio.dart';
import 'package:flutter/material.dart';

class NonSelectedAnswerItem extends StatelessWidget {
  const NonSelectedAnswerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainerDecoration(
      child: ListTile(
        title: Text('2002', style: AppStyle.semiBold20),
        trailing: CustomRadio(correctChoice: false),
      ),
    );
  }
}
