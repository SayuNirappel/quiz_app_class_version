import 'package:quiz_app_class_version/model/question_model.dart';

class DummyDb {
  List<QuestionModel> questions = [
    QuestionModel(
      question: "Which programming language is used to develop Flutter apps?",
      options: ["Java", "Kotlin", "Swift", "Dart"],
      answerIndex: 3,
    ),
    QuestionModel(
      question:
          "What is the widget in Flutter that does not have a visual representation but helps manage layout?",
      options: ["Container", "SizedBox", "Column", "Expanded"],
      answerIndex: 1,
    ),
    QuestionModel(
      question:
          "Which method is called when a StatefulWidget is first inserted into the widget tree?",
      options: ["build()", "createState()", "initState()", "dispose()"],
      answerIndex: 2,
    ),
    QuestionModel(
      question: "Which widget is used to create a scrollable list in Flutter?",
      options: ["Column", "ListView", "Stack", "Container"],
      answerIndex: 1,
    ),
    QuestionModel(
      question: "What is the entry point function in a Dart program?",
      options: ["runApp()", "initState()", "main()", "start()"],
      answerIndex: 2,
    ),
    QuestionModel(
      question:
          "Which keyword is used to define an asynchronous function in Dart?",
      options: ["await", "async", "future", "defer"],
      answerIndex: 1,
    ),
    QuestionModel(
      question:
          "Which Flutter widget is used to display an image from the internet?",
      options: ["Image.asset", "Image.network", "Image.file", "Image.memory"],
      answerIndex: 1,
    ),
    QuestionModel(
      question: "What type of widget is 'Text' in Flutter?",
      options: [
        "StatefulWidget",
        "StatelessWidget",
        "InheritedWidget",
        "StreamBuilder"
      ],
      answerIndex: 1,
    ),
    QuestionModel(
      question:
          "What is the purpose of the 'pubspec.yaml' file in a Flutter project?",
      options: [
        "Manage app dependencies",
        "Define app UI",
        "Store user data",
        "Compile Dart code"
      ],
      answerIndex: 0,
    ),
    QuestionModel(
      question: "Which command is used to create a new Flutter project?",
      options: [
        "flutter new",
        "flutter init",
        "flutter create",
        "flutter start"
      ],
      answerIndex: 2,
    ),
    QuestionModel(
      question:
          "What is the default build mode in Flutter when running 'flutter run'?",
      options: ["Debug", "Release", "Profile", "Test"],
      answerIndex: 0,
    ),
    QuestionModel(
      question:
          "Which widget in Flutter allows you to apply padding to its child?",
      options: ["Padding", "SizedBox", "Container", "Align"],
      answerIndex: 0,
    ),
    QuestionModel(
      question: "Which class is used for asynchronous operations in Dart?",
      options: ["Future", "Stream", "AsyncTask", "Completer"],
      answerIndex: 0,
    ),
    QuestionModel(
      question: "Which widget is used to create a button in Flutter?",
      options: ["Text", "Container", "ElevatedButton", "Column"],
      answerIndex: 2,
    ),
    QuestionModel(
      question: "How do you define a constant variable in Dart?",
      options: ["final", "const", "var", "static"],
      answerIndex: 1,
    ),
  ];
}
