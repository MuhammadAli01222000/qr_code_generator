import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color textColor;
  final void Function() onTap;
  const Button({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.color,
    required this.onTap,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        color: color,
        child: MaterialButton(
          onPressed: onTap,
          child: Center(child: Text(text, style: TextStyle(color: textColor))),
        ),
      ),
    );
  }
}
