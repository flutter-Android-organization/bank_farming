import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';

class LinkTxt extends StatelessWidget {
  const LinkTxt({super.key, required this.data, required this.onTap});

  final String data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: InkWell(
        onTap: onTap,
        child: Text(data, style: TextStyle(color: colOne)),
      ),
    );
  }
}
