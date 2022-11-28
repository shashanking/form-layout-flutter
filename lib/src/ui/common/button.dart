import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key, this.onPressed, required this.child, required this.color})
      : super(key: key);
  final Color color;
  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
          textStyle: const TextStyle(),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    );
  }
}
