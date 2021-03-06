import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_brain.dart';
import 'package:quiz_app/screen/stack_misal.dart';

import 'widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      // home: const MyHomePage(),
      home: const StackMisal(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon correctIcon = const Icon(
    Icons.check,
    color: Colors.green,
    size: 40,
  );
  Icon incorrectIcon = const Icon(
    Icons.close,
    color: Colors.red,
    size: 40,
  );
  List<Icon> icons = <Icon>[];
  String suroo;
  @override
  void initState() {
    // suroo = quizBrain.getQuestions();
    showQuestion();

    super.initState();
  }

  void showQuestion() {
    suroo = quizBrain.getQuestions();
  }

  bool isFinished = false;
  //koldonuuchununJoobu = answer ;
  void userAnswered(bool answer) {
    // tuuraJooptor = realAnswers
    bool realAnswers = quizBrain.getAnswer();
    if (answer == realAnswers) {
      icons.add(correctIcon);
    } else {
      icons.add(incorrectIcon);
    }
    quizBrain.getNext();
    suroo = quizBrain.getQuestions();
    if (suroo == 'Surolor buttu') {
      isFinished = true;
    }
    setState(() {});
  }

  // void koldonuuchuJoopBerdi(bool answer) {
  //   bool realAnswers = quizBrain.getAnswer();

  //   if (answer == realAnswers) {
  //     // ikonkalar.add(tuuraIkonka);
  //     icons.add(correctIcon);
  //   } else {
  //     // ikonkalar.add(kataIkonka);
  //     icons.add(incorrectIcon);
  //   }
  //   // suroonunMeesi.suroonuOtkoz();
  //   // suroo = suroonunMeesi.suroonuAlipkel();
  //   // if (suroo == 'Buttu') {
  //   //   buttubuIndicator = true;
  //   // }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212121),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (isFinished == true)
                CustomButton(
                  horizontalSize: 0.15,
                  verticalSize: 0.03,
                  color: Colors.red,
                  text: 'Ayagina chikty',
                  onPressed: () {
                    quizBrain.restart();
                    quizBrain.getQuestions();
                    isFinished = false;
                    icons = [];
                    setState(() {});
                  },
                )
              else
                Column(
                  children: [
                    Text(
                      suroo,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                    CustomButton(
                        text: '??????????',
                        color: const Color(0xff4AB150),
                        horizontalSize: 0.3,
                        verticalSize: 0.02,
                        onPressed: () {
                          userAnswered(true);
                        }),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomButton(
                      text: '??????????',
                      color: const Color(0xffF54336),
                      horizontalSize: 0.3,
                      verticalSize: 0.02,
                      onPressed: () {
                        userAnswered(false);
                      },
                    ),
                  ],
                ),
              Row(children: icons),
            ],
          ),
        ),
      ),
    );
  }
}

class Adam {
  String name;

  Adam({
    this.name,
  });
}

class Mugalim {}

class Unaalar {
  int oturguch;
  Unaalar({this.oturguch});
}
