import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneInputStd extends StatelessWidget {
  const PhoneInputStd({super.key});

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        // print(number.phoneNumber);
      },
      validator: (String? value) {
        if (value == null) {
          return 'Please enter your phone number';
        } else if (value.length == 10) {
          return null;
        }
        else{
          return 'Not a valid phone number';
        }

      },
      onInputValidated: (bool value) {
        print(value);
      },
      selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          trailingSpace: false,
          useBottomSheetSafeArea: true,
          leadingPadding: 0,
          setSelectorButtonAsPrefixIcon: true),
      maxLength: 10,
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      selectorTextStyle: TextStyle(color: Colors.black),
      textStyle: TextStyle(color: Colors.black),

      inputDecoration: const InputDecoration(
        icon: Icon(Icons.call),
        hintStyle: TextStyle(
          fontSize: 14,
        ),
        hintText: 'Enter Your Phone Number',
      ),

      initialValue: PhoneNumber(isoCode: 'EG'),
      textFieldController: TextEditingController(),
      formatInput: false,
      keyboardType: TextInputType.phone,

    );
  }
}
