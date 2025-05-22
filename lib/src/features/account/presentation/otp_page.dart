import 'package:bank_farming/src/common_widgets/layout_widget.dart';
import 'package:bank_farming/src/common_widgets/link_txt.dart';
import 'package:bank_farming/src/common_widgets/otp_pin_field.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/txt_btn.dart';

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
      body: LayoutWidget(
        childrenHeader: [
          SizedBox(height: 20),
          IconBtnTwo(
            onPressed: () => context.pop(context),
            icon: Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            'OTP Verification',
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Enter the verification code we just to your email address.',
            softWrap: true,
            style: TextStyle(
              color: Colors.white60,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        childrenSub: [
          Form(
            child: Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Image.asset(
                        'assets/images/random/Enter OTP.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    SizedBox(height: 20),
                    OtpPinField(
                      onChanged: (String) {},
                      onCompleted: (String) {},
                    ),
                    SizedBox(height: 40),
                    TxtBtn(
                      toCart: () {
                        context.goNamed(RouteNames.createNew.name);
                      },
                      addText: 'Verify',
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Didn\'t receive code?'),
                        LinkTxt(
                          data: 'Resend',
                          onTap: () => context.pop(context),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
