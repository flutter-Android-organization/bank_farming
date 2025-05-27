import 'package:bank_farming/src/common_widgets/horizontal_bar.dart';
import 'package:bank_farming/src/common_widgets/icon_btn.dart';
import 'package:bank_farming/src/common_widgets/layout_widget.dart';
import 'package:bank_farming/src/common_widgets/link_txt.dart';
import 'package:bank_farming/src/common_widgets/txt_btn.dart';
import 'package:bank_farming/src/common_widgets/txt_form_field.dart';
import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoginPortrait extends StatelessWidget {
  const LoginPortrait({
    super.key,
    this.formsKey,
    required this.emailController,
    required this.passwordController,
    this.emailValidator,
    this.passwordValidator,
    required this.onPressed,
    required this.onTap,
    required this.toCart,
  });

  final Key? formsKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? passwordValidator;
  final VoidCallback onPressed;
  final VoidCallback onTap;
  final VoidCallback toCart;

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      childrenHeader: [
        SizedBox(height: 20),
        IconBtnTwo(
          onPressed: () => context.pop(context),
          icon: Icons.arrow_back_outlined,
          color: Colors.white,
        ),
        SizedBox(height: 10),
        Text(
          'Welcome back! Glad to see you, Again!',
          softWrap: true,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ],
      childrenSub: [
        FormBuilder(
          key: formsKey,
          child: Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    controller: emailController,
                    labelTxt: 'Email',
                    leadIcon: Icons.email_outlined,
                    validator: passwordValidator,
                  ),
                  SizedBox(height: 20),
                  TxtFormField(
                    controller: passwordController,
                    labelTxt: 'Password',
                    leadIcon: Icons.password,
                    obscure: true,
                    suffixIcon: IconButton(
                      highlightColor: colOne,
                      splashColor: colOne,
                      hoverColor: colOne,
                      onPressed: () {},
                      icon: Icon(Icons.visibility_outlined),
                    ),
                    validator: passwordValidator,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TxtBtbOne(
                        onPressed: onPressed,
                            //() => context.goNamed(RouteNames.forget.name),
                        txtData: 'Forget password?',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  TxtBtn(toCart: toCart, addText: 'Login'),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  _dashedLogin(),
                  SizedBox(height: 20),
                  _rowBtn(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      LinkTxt(
                        data: 'Register Now',
                        onTap: onTap,//() => context.goNamed(RouteNames.signup.name),
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
    );
  }

  Widget _rowBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconBtn(
          iconOrImage: false,
          iconImage: 'assets/images/logo/facebook.png',
          borderColor: colFour,
          onPressed: () {},
        ),
        IconBtn(
          iconOrImage: false,
          iconImage: 'assets/images/logo/google.png',
          borderColor: colFour,
          onPressed: () {},
        ),
        IconBtn(
          iconOrImage: false,
          iconImage: 'assets/images/logo/apple.png',
          borderColor: colFour,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _dashedLogin() {
    return Row(
      children: [
        Expanded(child: HorizontalBar(barMargin: EdgeInsets.only(right: 20))),

        Text(
          'Or Login with',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: colFour,
          ),
        ),

        Expanded(child: HorizontalBar(barMargin: EdgeInsets.only(left: 20))),
      ],
    );
  }
}
