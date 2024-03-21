import 'package:educationapp/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 73,
        width: double.infinity,
        decoration: ShapeDecoration(
          color: const Color(0xFF004643),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Text(title, style: AppStyle.semiBold24),
        ),
      ),
    );
  }
}