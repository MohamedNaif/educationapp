import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyElevatedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 9, 145, 138),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                14.0), // Match FloatingActionButton's border radius
          ), // Set text color to white
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              fontFamily: "Lato",
            ),
          ),
        ),
      ),
    );
  }
}
