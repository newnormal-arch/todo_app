import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  const DefaultElevatedButton({
    Key? key,
    required this.press,
    required this.text,
    required this.color,
    required this.textColor,
    required this.textFontSize,
  }) : super(key: key);
  final VoidCallback press;
  final String text;
  final Color color;
  final Color textColor;
  final double textFontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: color,
        textStyle: TextStyle(
          fontSize: textFontSize,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
        minimumSize: const Size(
          double.infinity,
          50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
