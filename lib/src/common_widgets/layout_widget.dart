import 'package:flutter/material.dart';

import '../constant/color_constant.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({
    super.key,
    required this.childrenHeader,
    required this.childrenSub,
  });

  final List<Widget> childrenHeader;
  final List<Widget> childrenSub;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: colOne),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: childrenHeader,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: childrenSub,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
