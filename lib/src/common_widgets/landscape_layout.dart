import 'package:flutter/material.dart';
import '../constant/color_constant.dart';


class LandscapeLayout extends StatelessWidget {
  const LandscapeLayout({super.key, required this.leftSide, required this.rightSide});

  final List<Widget> leftSide;
  final List<Widget> rightSide;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: colOne),
      child: Row(
        children: [
          SizedBox(width: 30,),
          Container(
            padding: EdgeInsets.all(20),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: leftSide
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: rightSide
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
