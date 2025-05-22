import 'package:flutter/material.dart';

class RainbowOutline extends StatelessWidget {
  const RainbowOutline({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(1), // space for the border
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const SweepGradient(
          colors: [
            Colors.red,
            Colors.orange,
            Colors.yellow,
            Colors.green,
            Colors.blue,
            Colors.indigo,
            Colors.purple,
            Colors.red, // to complete the circle
          ],
          startAngle: 0.0,
          endAngle: 6.28319, // 2 * pi radians
        ),
      ),
      child: child,
    );
  }
}
