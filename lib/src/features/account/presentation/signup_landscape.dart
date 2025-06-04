import 'package:bank_farming/src/common_widgets/landscape_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/horizontal_bar.dart';
import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/link_txt.dart';
import '../../../common_widgets/switch_example.dart';
import '../../../common_widgets/txt_btn.dart';
import '../../../common_widgets/txt_form_field.dart';
import '../../../constant/color_constant.dart';
import '../../../routing/route_names.dart';

class SignupLandscape extends StatelessWidget {
  const SignupLandscape({
    super.key,
    this.signupFormKey,
    this.userNameController,
    this.signupEmailController,
    this.signupPhoneController,
    this.signupPasswordController,
    this.userNameValidator,
    this.signupEmailValidator,
    this.signupPhoneValidator,
    this.signupPasswordValidator,
    required this.toRegister,
  });

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
    return LandscapeLayout(
        leftSide: [
          IconBtnTwo(
            onPressed: () => context.pop(context),
            icon: Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          SizedBox(height: 20),
          Text(
            'Welcome back! \n Glad to see you, \n Again!',
            softWrap: true,
            textAlign: TextAlign.center,
            maxLines: 3,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
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
                  key: signupFormKey,
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
              );
            },
          ),
        ]);
  }
}
