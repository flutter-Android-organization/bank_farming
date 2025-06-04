import 'package:bank_farming/src/common_widgets/landscape_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/link_txt.dart';
import '../../../common_widgets/txt_btn.dart';
import '../../../common_widgets/txt_form_field.dart';

class ForgetLandscape extends StatelessWidget {
  const ForgetLandscape({
    super.key,
    this.forgetFormKey,
    this.receiverMailController,
    this.forgetEmailValidator,
    required this.sendCodeBtn,
    required this.backLogin,
  });

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
        LayoutBuilder(
          builder: (context, constraints) {
            final width =
                constraints.maxWidth > 500 ? 500.0 : constraints.maxWidth;
            return SizedBox(
              width: width,
              child: FormBuilder(
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
                    TxtBtn(
                      toCart: sendCodeBtn,
                      addText: 'Send Code',
                    ),
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
            );
          },
        ),
      ],
    );
  }
}
