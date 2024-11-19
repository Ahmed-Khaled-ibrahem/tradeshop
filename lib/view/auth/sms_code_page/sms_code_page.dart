import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SmsCodePage extends StatelessWidget {
  const SmsCodePage({super.key});
  final String _code="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter SMS Code'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            PinFieldAutoFill(
              codeLength: 4,
              decoration: UnderlineDecoration(
                textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
              ),
              currentCode: _code,
              onCodeSubmitted: (code) {},
              onCodeChanged: (code) {
                if (code!.length == 6) {
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              },
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
              },
              child: const Text('Did not receive code? Resend'),
            ),
          ],
        ),
      ),
    );
  }
}
