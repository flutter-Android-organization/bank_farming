import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurvedBottomNarBar extends StatelessWidget {
  const CurvedBottomNarBar({
    super.key,
    required this.currentIndex,
    required this.onItemTap,
  });

  final int currentIndex;
  final void Function(int) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100.sp,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: colThree,
          color: colOne,
          onTap: onItemTap,
          index: currentIndex,
          items: [
            CurvedNavigationBarItem(
              child: Icon(Icons.home_outlined, color: colFour),
              label: 'Home',
              labelStyle: TextStyle(color: colFour),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.perm_identity, color: colFour),
              label: 'Profile',
              labelStyle: TextStyle(color: colFour),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.newspaper, color: colFour),
              label: 'Feed',
              labelStyle: TextStyle(color: colFour),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.chat_outlined, color: colFour),
              label: 'Chat',
              labelStyle: TextStyle(color: colFour),
            ),
          ],
        ),
      ),
    );
  }
}
