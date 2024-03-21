import 'package:educationapp/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
