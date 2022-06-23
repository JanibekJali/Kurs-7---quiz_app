import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class StackMisal extends StatefulWidget {
  const StackMisal({Key key}) : super(key: key);

  @override
  _StackMisalState createState() => _StackMisalState();
}

class _StackMisalState extends State<StackMisal> {
  List<Icon> icons = <Icon>[
    Icon(
      Icons.check,
      color: Colors.green,
      size: 40,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
      size: 40,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          const Positioned(
            right: 30,
            left: 30,
            bottom: 400,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Surro Surro Surro Surro Surro Surro Surro  ',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 100.0,
          // ),
          Positioned(
            top: 500,
            left: 20,
            child: CustomButton(
                text: 'Туура',
                color: const Color(0xff4AB150),
                horizontalSize: 0.3,
                verticalSize: 0.02,
                onPressed: () {
                  // userAnswered(true);
                }),
          ),

          // SizedBox(
          //   height: 20,
          // ),
          Positioned(
            top: 600,
            left: 20,
            child: CustomButton(
              text: 'Катаа',
              color: const Color(0xffF54336),
              horizontalSize: 0.3,
              verticalSize: 0.02,
              onPressed: () {
                // userAnswered(false);
              },
            ),
          ),
          Positioned(
            top: 600,
            left: 40,
            child: CustomButton(
                text: 'Туура',
                color: const Color(0xff4AB150),
                horizontalSize: 0.001,
                verticalSize: 0.001,
                onPressed: () {
                  // userAnswered(true);
                }),
          ),

          Positioned(left: 2, bottom: 30, child: Row(children: icons)),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [],
          // ),
        ]),
      ),
    );
  }
}
