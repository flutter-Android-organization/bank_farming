import 'package:bank_farming/src/common_widgets/icon_btn.dart';
import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double size;
  final Color progressColor;
  final double progressValue; // Between 0.0 and 1.0

  const CircularIconButton({
    super.key,
    required this.onPressed,
    this.size = 100.0,
    this.progressColor = colOne,
    this.progressValue = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Circular progress indicator
          SizedBox(
            width: size + 50,
            height: size + 50,
            child:  CircularProgressIndicator(
                value: 0.0,
                strokeWidth: 2.0,
                backgroundColor: Colors.white.withAlpha(90)
            ),
          ),

          SizedBox(
            width: size + 50,
            height: size + 50,
            child:  CircularProgressIndicator(
                value: progressValue,
                valueColor: const AlwaysStoppedAnimation<Color>(colOne),
                strokeWidth: 4.0,
                color: progressColor,
                backgroundColor: Colors.transparent
            ),
          ),

          // Centered icon
          IconBtnOne(onIconPressed: onPressed, iconSize: 15,),
        ],
      ),
    );
  }
}