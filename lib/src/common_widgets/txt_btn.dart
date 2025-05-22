import 'package:flutter/material.dart';
import '../constant/color_constant.dart';

class TxtBtn extends StatelessWidget {
  const TxtBtn({super.key, required this.toCart, required this.addText});

  final VoidCallback toCart;
  final String addText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: colOne,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: colOne),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: toCart,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            addText,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
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
