import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPinField extends StatefulWidget {
  const OtpPinField({super.key, required this.onChanged, required this.onCompleted});

  final void Function(String) onChanged;
  final void Function(String) onCompleted;

  @override
  State<OtpPinField> createState() => _OtpPinFieldState();
}

class _OtpPinFieldState extends State<OtpPinField> {

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4, // Number of boxes
      onChanged: widget.onChanged,
      onCompleted: widget.onCompleted,
      blinkDuration: Duration(seconds: 2),
      obscuringWidget: Image.asset('assets/images/logo/farm_logo.png', width: 50, height: 50,),
      blinkWhenObscuring: true,
      autoFocus: true,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 100,
        fieldWidth: 80,
        inactiveColor: Colors.grey,
        selectedColor: Colors.blue,
        activeColor: Colors.green,
      ),
      keyboardType: TextInputType.number, // Numeric keyboard
    );
  }
}