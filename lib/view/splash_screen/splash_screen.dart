import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app_class_version/view/quiz_screem/quiz_screen.dart';

void main() {}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Future.delayed(Duration(seconds: 3)).then((value) {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => QuizScreen()));
    // });
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => QuizScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Text("Splash Screen"),
            ClipRRect(
              child: Text(
                "Loading Questions",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
