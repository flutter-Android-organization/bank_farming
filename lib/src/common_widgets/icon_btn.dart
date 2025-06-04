import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({
    super.key,
    this.iconOrImage = true,
    this.icon = Icons.arrow_back_ios,
    this.iconImage = '',
    this.borderColor = Colors.white,
    required this.onPressed,
  });

  final bool iconOrImage;
  final IconData icon;
  final String iconImage;
  final Color borderColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child:
            iconOrImage
                ? Icon(Icons.arrow_back_ios, color: Colors.white)
                : Image.asset(iconImage, width: 50, height: 50),
      ),
    );
  }
}

class IconBtnOne extends StatelessWidget {
  const IconBtnOne({
    super.key,
    required this.onIconPressed,
    required this.iconSize,
    this.icon = Icons.arrow_forward_ios,
    this.backgroundColor = colOne,
    this.fixed = 55.0,
    this.iconColor = Colors.white,
  });

  final VoidCallback onIconPressed;
  final double iconSize;
  final IconData icon;
  final Color backgroundColor;
  final double fixed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 4,
        fixedSize: Size(fixed, fixed),
        //padding: EdgeInsets.all(20)
      ),
      iconSize: iconSize,
      onPressed: onIconPressed,
      icon: Icon(icon, color: iconColor),
    );
  }
}

class IconBtnTwo extends StatelessWidget {
  const IconBtnTwo({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.color,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(icon, color: color));
  }
}
