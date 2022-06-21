import 'dart:developer';

import 'quiz.dart';

class QuizBrain {
  int _index = 0;
  // suroolor jana jooptor = questionsAnswers
  List<Quiz> questionsAnswers = <Quiz>[
    Quiz(question: 'Kyrgyzstan kityida jaigashkan', answer: false),
    Quiz(question: 'Bishkek borbor sharby?', answer: true),
    Quiz(question: 'Batkende oruk osobu?', answer: true),
  ];
  // suroolorduAlipKel = getQuestions
  String getQuestions() {
    if (_index < questionsAnswers.length) {
      return questionsAnswers[_index].question;
    } else {
      return 'Surolor buttu';
    }
  }

  // jooptuAlipKel = getAnswer
  bool getAnswer() {
    if (_index < questionsAnswers.length) {
      return questionsAnswers[_index].answer;
    }
  }

  // suroonu otloz = getNext
  void getNext() {
    _index++;
  }

  void restart() {
    _index = 0;
  }
}

final QuizBrain quizBrain = QuizBrain();
// final QuizBrain quizBrain2 = QuizBrain();
// final QuizBrain quizBrain3 = QuizBrain();
