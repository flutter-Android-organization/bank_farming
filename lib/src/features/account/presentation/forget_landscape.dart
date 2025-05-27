import 'package:bank_farming/src/common_widgets/landscape_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/link_txt.dart';
import '../../../common_widgets/txt_btn.dart';
import '../../../common_widgets/txt_form_field.dart';
import '../../../constant/color_constant.dart';


class ForgetLandscape extends StatelessWidget {
  const ForgetLandscape({super.key, this.forgetFormKey, this.receiverMailController, this.forgetEmailValidator, required this.sendCodeBtn, required this.backLogin});

  final Key? forgetFormKey;
  final TextEditingController? receiverMailController;
  final String? Function(String?)? forgetEmailValidator;
  final VoidCallback sendCodeBtn;
  final VoidCallback backLogin;

  @override
  Widget build(BuildContext context) {
    return LandscapeLayout(
        leftSide: [
          IconBtnTwo(
            onPressed: () => context.pop(context),
            icon: Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            'Forgot Password?',
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Don\'t worry! it occurs. \n Please enter the email address \n linked with your account.',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
          ),
        ],
        rightSide: [
          FormBuilder(
            key: forgetFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Lottie.asset(
                    'assets/images/animations/login_anime.json',
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(height: 20),
                TxtFormField(
                  controller: receiverMailController,
                  labelTxt: 'Email',
                  leadIcon: Icons.email_outlined,
                  validator: forgetEmailValidator,
                ),
                SizedBox(height: 40),
                TxtBtn(toCart: sendCodeBtn, addText: 'Send Code'),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remember Password?'),
                    LinkTxt(data: 'Login', onTap: backLogin),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ]
    );
      Container(
      decoration: BoxDecoration(color: colOne),
      child: Row(
        children: [
          SizedBox(width: 30,),
          Container(
            padding: EdgeInsets.all(20),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [

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
