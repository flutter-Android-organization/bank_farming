import 'package:bank_farming/src/common_widgets/switch_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/horizontal_bar.dart';
import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/layout_widget.dart';
import '../../../common_widgets/link_txt.dart';
import '../../../common_widgets/txt_btn.dart';
import '../../../common_widgets/txt_form_field.dart';
import '../../../constant/color_constant.dart';
import '../../../routing/route_names.dart';


class SignupPortrait extends StatelessWidget {
  const SignupPortrait({super.key, this.signupFormKey, this.userNameController, this.signupEmailController, this.signupPhoneController, this.signupPasswordController, this.userNameValidator, this.signupEmailValidator, this.signupPhoneValidator, this.signupPasswordValidator, required this.toRegister});

  final Key? signupFormKey;
  final TextEditingController? userNameController;
  final TextEditingController? signupEmailController;
  final TextEditingController? signupPhoneController;
  final TextEditingController? signupPasswordController;
  final String? Function(String?)? userNameValidator;
  final String? Function(String?)? signupEmailValidator;
  final String? Function(String?)? signupPhoneValidator;
  final String? Function(String?)? signupPasswordValidator;
  final VoidCallback toRegister;

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
          key: signupFormKey,
          child: Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      'assets/images/random/Sign up.png',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  SizedBox(height: 20),
                  TxtFormField(
                    controller: userNameController,
                    labelTxt: 'UserName',
                    leadIcon: Icons.person_outline,
                    validator: userNameValidator,
                  ),
                  SizedBox(height: 20),
                  TxtFormField(
                    controller: signupEmailController,
                    labelTxt: 'Email',
                    leadIcon: Icons.email_outlined,
                    validator: signupEmailValidator,
                  ),
                  SizedBox(height: 20),
                  TxtFormField(
                    controller: signupPhoneController,
                    labelTxt: 'Phone Number',
                    leadIcon: Icons.phone_android_outlined,
                    validator: signupPhoneValidator,
                  ),
                  SizedBox(height: 20),
                  TxtFormField(
                    controller: signupPasswordController,
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
                    validator: signupPasswordValidator,
                  ),
                  SizedBox(height: 40),
                  TxtBtn(
                    toCart: toRegister,
                    addText: 'Register Now',
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SwitchExample(),
                      Expanded(
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text('By signing up, you\'ve agree to our'),
                            LinkTxt(
                              data: 'terms and conditions',
                              onTap: () {},
                            ),
                            Text('and'),
                            LinkTxt(
                              data: 'Login',
                              onTap: () {
                                context.goNamed(RouteNames.login.name);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: HorizontalBar(
                          barMargin: EdgeInsets.only(right: 20),
                        ),
                      ),

                      Text(
                        'Or Login with',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: colFour,
                        ),
                      ),

                      Expanded(
                        child: HorizontalBar(
                          barMargin: EdgeInsets.only(left: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
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
}
