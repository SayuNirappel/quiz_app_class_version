import 'package:flutter/material.dart';
import 'package:quiz_app_class_version/view/quiz_screem/quiz_screen.dart';
import 'package:quiz_app_class_version/view/result_screen/result_screen.dart';
import 'package:quiz_app_class_version/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            // ResultScreen(
            //   answerCount: 7,
            // )
            SplashScreen()
        //QuizScreen(),
        );
  }
}
