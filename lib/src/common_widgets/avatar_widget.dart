import 'package:bank_farming/src/common_widgets/rainbow_outline.dart';
import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    required this.assetName,
    required this.avatarTxt,
    required this.onTap,
  });

  final String assetName;
  final String avatarTxt;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RainbowOutline(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(assetName),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              avatarTxt,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: colFour),
            ),
          ],
        ),
      ),
    );
  }
}
