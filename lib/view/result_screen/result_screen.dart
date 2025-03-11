import 'package:flutter/material.dart';
import 'package:quiz_app_class_version/dummy_db.dart';
import 'package:quiz_app_class_version/view/quiz_screem/quiz_screen.dart';

void main() {}

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.answerCount});
  final int answerCount;

  @override
  Widget build(BuildContext context) {
    int total = DummyDb.questions.length;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                3,
                (starIndex) => Padding(
                      padding: EdgeInsets.only(bottom: starIndex == 1 ? 90 : 0),
                      child: Icon(
                        Icons.star,
                        size: starIndex == 1 ? 90 : 50,
                        color: (starIndex < _percentageCounter(answerCount)
                            ? Colors.amber
                            : Colors.grey),
                      ),
                    )),
          ),
          Text(
            "Congratulations",
            style: TextStyle(
                color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Your Score",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "$answerCount/$total",
            style: TextStyle(
                color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement((context),
                  MaterialPageRoute(builder: (context) => QuizScreen()));
            },
            child: Container(
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all()),
                    child: Icon(
                      Icons.restart_alt,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Retry",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

num _percentageCounter(answerCount) {
  num tot = DummyDb.questions.length;
  num finalp = ((answerCount / tot) * 100);
  if (finalp > 80) {
    return 3;
  } else if (finalp > 50) {
    return 2;
  } else if (finalp > 30) {
    return 1;
  } else
    return 0;
}
