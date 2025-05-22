import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';


class HorizontalBar extends StatelessWidget {
  const HorizontalBar({super.key, required this.barMargin});

  final EdgeInsetsGeometry barMargin;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: barMargin,
      height: 1.5, // Thickness of the bar
      width: double.infinity, // Full width
      color: colFour.withAlpha(70), // Color of the bar
    );
  }
}