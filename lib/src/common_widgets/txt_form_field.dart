import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../constant/color_constant.dart';
class TxtFormField extends StatelessWidget {
  const TxtFormField({
    super.key,
    this.controller,
    required this.labelTxt,
    this.validator,
    required this.leadIcon,
    this.suffixIcon,
    this.obscure = false,
  });

  final TextEditingController? controller;
  final String labelTxt;
  final String? Function(String?)? validator;
  final IconData leadIcon;
  final Widget? suffixIcon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      controller: controller,
      name: labelTxt,
      validator: validator,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: labelTxt,
        prefixIcon: Icon(leadIcon),
        filled: true,
        fillColor: colFour,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white70),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: colFour),
        ),
        floatingLabelStyle: TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: colOne),
        ),
        hoverColor: Colors.white54,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
