import 'dart:developer';

import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
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
  // Adam jon = Adam(
  //   name: 'Jon',
  // );
  // Adam jane = Adam(
  //   name: 'Jane',
  // );
  // Unaalar toyota = Unaalar(oturguch: 4);
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
  @override
  void initState() {
    // icons.add(correctIcon);
    // icons.add(incorrectIcon);
    // log(jon.name);
    // log(jane.name);
    // TODO: implement initState
    super.initState();
  }

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
              Column(
                children: [
                  const Text(
                    'Suroolor kelet',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  CustomButton(
                      text: 'Туура',
                      color: const Color(0xff4AB150),
                      onPressed: () {
                        setState(() {});
                        icons.add(correctIcon);
                      }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomButton(
                      text: 'Катаа',
                      color: const Color(0xffF54336),
                      onPressed: () {
                        setState(() {});
                        icons.add(incorrectIcon);
                      }),
                  Row(children: icons),
                ],
              )
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