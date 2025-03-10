import 'package:flutter/material.dart';
import 'package:quiz_app_class_version/dummy_db.dart';
import 'package:quiz_app_class_version/view/result_screen/result_screen.dart';
// import 'package:quiz_app_sample/dummy_counter.dart';
// import 'package:quiz_app_sample/dummy_db.dart';
// import 'package:quiz_app_sample/model/question_model/question_model.dart';
// import 'package:quiz_app_sample/view/result_screen.dart/result_screen.dart';

void main() {}

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int limit = 10;
  int questionIndex = 0;
  int? clickedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Text(
            "${questionIndex + 1}/${DummyDb.questions.length}",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    DummyDb.questions[questionIndex].question,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              spacing: 20,
              children: List.generate(
                  4,
                  (index) => InkWell(
                        onTap: () {
                          if (clickedIndex == null) {
                            clickedIndex = index;
                            setState(() {});
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: _buildOptionColor(index),
                              border: Border.all(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    DummyDb.questions[questionIndex]
                                        .options[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (questionIndex < DummyDb.questions.length - 1) {
                    questionIndex++;
                  } else {
                    Navigator.pushReplacement(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => ResultScreen()));
                  }
                  clickedIndex = null;
                });
              },
              child: Container(
                  height: 40,
                  width: double.infinity,
                  // margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Center(child: Text("Next"))),
            )
          ],
        ),
      ),
    );
  }

  Color? _buildOptionColor(int index) {
    if (clickedIndex != null) {
      if (DummyDb.questions[questionIndex].answerIndex == index) {
        return Colors.lightGreenAccent;
      }
    }
    if (clickedIndex == index) {
      if (index == DummyDb.questions[questionIndex].answerIndex) {
        return Colors.greenAccent;
      } else {
        return Colors.redAccent;
      }
    }
    return null;
  }
}
