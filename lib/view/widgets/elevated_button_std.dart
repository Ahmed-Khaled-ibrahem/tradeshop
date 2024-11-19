
import 'package:flutter/material.dart';

class ElevatedButtonStd extends StatelessWidget {
  const ElevatedButtonStd({required this.child, required this.onPressed, super.key});

  final Widget child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        child: child,
        style: ElevatedButton.styleFrom(
          elevation: 0.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
