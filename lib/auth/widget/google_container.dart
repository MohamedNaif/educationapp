import 'package:flutter/material.dart';

class googleContainer extends StatelessWidget {
  const googleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          "Or Login With  ",
          style: TextStyle(color: Colors.white),
        )),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Color.fromARGB(20, 255, 255, 255),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Text(
              //   "Or Continue With Google",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 20,
              //       fontFamily: "Lato",
              //       fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   width: 4,
              // ),
              Image.asset(
                'assets/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
                // width: 70,
                // height: 90,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
