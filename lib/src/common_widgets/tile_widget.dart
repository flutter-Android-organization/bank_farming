import 'package:bank_farming/src/common_widgets/rainbow_outline.dart';
import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({
    super.key,
    required this.memberImage,
    required this.memberName,
    required this.memberQuote,
    required this.time,
    required this.onTap,
    this.timeChan = true,
    this.trailIcon = Icons.check,
  });
  final String memberImage;
  final String memberName;
  final String memberQuote;
  final String time;
  final VoidCallback onTap;
  final bool timeChan;
  final IconData trailIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: ListTile(
        leading: RainbowOutline(child:   CircleAvatar(
          backgroundImage: AssetImage(memberImage),
          radius: 30,
        ),),
        title: Text(
          memberName,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          memberQuote,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: colFour),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if(timeChan)
              Text(
                time,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
            Icon(trailIcon, color: colFour,)
          ],
        )
      ),
    );
  }
}
