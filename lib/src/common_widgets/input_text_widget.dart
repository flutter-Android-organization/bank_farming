import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    super.key,
    required this.fieldController,
    required this.inputIcon,
    required this.inputText,
    required this.obscure,
    this.inputSuffix,
    this.suffixClick,
    this.validator,
  });

  final TextEditingController fieldController;
  final IconData inputIcon;
  final String inputText;
  final bool obscure;
  final IconData? inputSuffix;
  final VoidCallback? suffixClick;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldController,
      decoration: InputDecoration(
        label: Text(inputText),
        filled: true,
        fillColor: colFour,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2.0,
            color: colOne,
          ), // Focus border
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colFour), // Enabled border
          borderRadius: BorderRadius.circular(5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red), // Enabled border
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder:  OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red), // Enabled border
          borderRadius: BorderRadius.circular(5),
        ),
        //hintText: inputText,
        prefixIcon: Icon(inputIcon),
        suffixIcon:
            inputSuffix != null
                ? IconButton(
                  highlightColor: colOne,
                  splashColor: colOne,
                  hoverColor: colOne,
                  onPressed: suffixClick,
                  icon: Icon(inputSuffix),
                )
                : null,
      ),
      obscureText: obscure,
      validator: validator,
    );
  }
}
