import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import '../constant/screen_size_config_constant.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget compactChild;
  final Widget mediumChild;
  final Widget expandedChild;

  const ResponsiveWidget({
    super.key,
    required this.compactChild,
    required this.mediumChild,
    this.expandedChild = const Center(
      child: Text('Expanded Screen', style: TextStyle(fontSize: 50)),
    ),
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;

    // Define your screen size conditions
    bool compactScreen = screenWidth < 600;
    bool mediumScreen = screenWidth >= 600 && screenWidth < 840;
    bool expandScreen = screenWidth >= 840 && screenWidth < 1200;

    if (compactScreen) {
      return compactChild;
    } else if (mediumScreen) {
      return mediumChild;
    } else if (expandScreen) {
      return expandedChild;
    } else {
      return expandedChild;
    }
  }
}
