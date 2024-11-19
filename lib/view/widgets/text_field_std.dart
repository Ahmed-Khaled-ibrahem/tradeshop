import 'package:flutter/material.dart';

class TextFieldStd extends StatelessWidget {
  const TextFieldStd({required this.lblText,super.key});
 final String lblText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: lblText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
