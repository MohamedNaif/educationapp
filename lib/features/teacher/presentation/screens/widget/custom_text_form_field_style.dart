import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final double borderRadius;
  final Color borderColor;
  final Color textColor;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.borderRadius = 8.0, // Default border radius
    this.borderColor = Colors.grey, // Default border color
    this.textColor = Colors.white, // Default text color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: textColor), // Set text color
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: textColor), // Set label color
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
        ),
      ),
    );
  }
}
