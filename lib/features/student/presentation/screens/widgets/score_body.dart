import 'package:educationapp/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScoreBody extends StatelessWidget {
  const ScoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(50),
        Row(
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.arrow_back_ios, color: Colors.white)),
            ),
            Text(
              'Score',
              style: AppStyle.semiBold24.copyWith(color: Colors.white),
            ),
            const Spacer(),
          ],
        )
      ],
    );
  }
}
