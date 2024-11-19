import 'package:firebase_auth/firebase_auth.dart';

class AuthFireRepo {
  final FirebaseAuth auth = FirebaseAuth.instance;

  AuthFireRepo() ;

  Future<void> verifyPhoneNumber(
      String phoneNumber,
      Function(PhoneVerificationCompleted) onCompleted,
      Function(PhoneVerificationFailed)? onFailed) async {
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 20),
      verificationCompleted: (PhoneAuthCredential credential) async {
        // onCompleted(credential);
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      codeSent: (String verificationId, int? forceResendingToken) async {
        // Update the UI - wait for the user to enter the SMS code
        String smsCode = 'xxxx';

        // Create a PhoneAuthCredential with the code
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: smsCode);

        // Sign the user in (or link) with the credential
        await auth.signInWithCredential(credential);
      },
    );
  }

  Future<UserCredential> signInWithPhoneNumber(
      String verificationId, String smsCode) async {
    final AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    return await auth.signInWithCredential(credential);
  }
}
