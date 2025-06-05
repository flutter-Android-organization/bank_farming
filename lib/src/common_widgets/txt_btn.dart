import 'package:flutter/material.dart';
import '../constant/color_constant.dart';

class TxtBtn extends StatelessWidget {
  const TxtBtn({
    super.key,
    required this.toCart,
    required this.addText,
    this.trueSize = true,
  });

  final VoidCallback toCart;
  final String addText;
  final bool trueSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: colOne,
        padding: EdgeInsets.all(16),
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: colOne),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: toCart,
      child: Row(
        mainAxisSize: trueSize ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(addText, style: TextStyle(fontSize: 14, color: Colors.white)),
        ],
      ),
    );
  }
}

class TxtBtbOne extends StatelessWidget {
  const TxtBtbOne({
    super.key,
    required this.onPressed,
    required this.txtData,
    this.fontSize,
  });

  final VoidCallback onPressed;
  final String txtData;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        txtData,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: fontSize, color: colOne),
      ),
    );
  }
}
