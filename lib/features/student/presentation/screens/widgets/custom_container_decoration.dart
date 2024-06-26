import 'package:educationapp/constants.dart';
import 'package:flutter/material.dart';

class CustomContainerDecoration extends StatelessWidget {
  const CustomContainerDecoration({
    super.key,
    required this.child,
    this.backgroundColor,
  });
  final Widget child;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: backgroundColor ?? kWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: child,
    );
  }
}
