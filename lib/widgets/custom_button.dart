import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.text,
      this.color,
      this.onPressed,
      this.verticalSize,
      this.horizontalSize});
  final String text;
  final Color color;
  final double verticalSize;
  final double horizontalSize;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color ?? Colors.yellow,
        onPrimary: Colors.white,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mediaWidth * horizontalSize,
            vertical: mediaHeight * verticalSize),
        child: Text(
          text,
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
