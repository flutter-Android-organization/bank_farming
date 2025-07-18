import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../common_widgets/txt_btn.dart';
import '../../../routing/route_names.dart';

class VerifiedChangePage extends StatefulWidget {
  const VerifiedChangePage({super.key});

  @override
  State<VerifiedChangePage> createState() => _VerifiedChangePageState();
}

class _VerifiedChangePageState extends State<VerifiedChangePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    bool trueScreen = screenWidth > 650;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/random/correct.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Password Changed!',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colOne,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your password has been changed successfully',
              softWrap: true,
              style: TextStyle(
                color: colOne.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TxtBtn(
                toCart: () {
                  context.goNamed(RouteNames.login.name);
                },
                addText: 'Back to Login',
                trueSize:  trueScreen ? false : true,
              ),
            )
          ],
        ),
      )
    );
  }
}
