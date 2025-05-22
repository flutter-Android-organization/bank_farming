import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../constant/color_constant.dart';

class BadgeButton extends StatelessWidget {
  const BadgeButton({
    super.key,
    required this.showBadge,
    required this.onPressed,
    required this.icon,
    this.badgeIconColor = colFour,
    this.badgeColor = colOne,
    this.iconColor = Colors.black,
  });

  final bool showBadge;
  final VoidCallback onPressed;
  final IconData icon;
  final Color badgeIconColor;
  final Color badgeColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      showBadge: showBadge,
      badgeContent: Icon(
        Icons.new_releases_outlined,
        size: 12,
        color: badgeIconColor,
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.circle,
        badgeColor: badgeColor,
      ),
      position: badges.BadgePosition.topEnd(top: -5, end: 0),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: badgeIconColor,
          shape: CircleBorder(),
        ),
        child: Icon(icon, color: Colors.black, size: 25),
      ),
    );
  }
}
