import 'package:flutter/material.dart';

class OutlinedButtonStd extends StatelessWidget {
  const OutlinedButtonStd({required this.lblText,super.key});
  final String lblText;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(lblText),
    );
  }
}
