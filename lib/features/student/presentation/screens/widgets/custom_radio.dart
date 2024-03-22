import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  const CustomRadio({
    super.key,
    required this.correctChoice,
  });
  final bool correctChoice;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: ShapeDecoration(
        color: correctChoice ? const Color(0xFF004643) : null,
        shape: const CircleBorder(
          side: BorderSide(width: 1, color: Colors.black),
        ),
      ),
      child: correctChoice
          ? const FittedBox(
              child: Icon(Icons.check, color: Colors.white),
            )
          : null,
    );
  }
}
