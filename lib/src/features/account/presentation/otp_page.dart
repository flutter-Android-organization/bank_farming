import 'package:bank_farming/src/features/account/presentation/otp_landscape.dart';
import 'package:bank_farming/src/features/account/presentation/otp_portrait.dart';
import 'package:bank_farming/src/utils/reposive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif/gif.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> with TickerProviderStateMixin {
  late GifController gifController;

  @override
  void initState() {
    gifController = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ResponsiveWidget(
        compactChild: OtpPortrait(),
        mediumChild: OtpLandscape(),
      ),
    );
  }
}
