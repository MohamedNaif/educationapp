import 'package:educationapp/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class ScoreHeader extends StatelessWidget {
  const ScoreHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              child: const Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
          ),
        ),
        Text(
          'Score',
          style: AppStyle.semiBold24.copyWith(color: Colors.white),
        ),
        const Spacer(),
      ],
    );
  }
}
