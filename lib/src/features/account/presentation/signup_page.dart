import 'package:bank_farming/src/common_widgets/layout_widget.dart';
import 'package:bank_farming/src/common_widgets/link_txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/horizontal_bar.dart';
import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/input_text_widget.dart';
import '../../../common_widgets/txt_btn.dart';
import '../../../constant/color_constant.dart';
import '../../../routing/route_names.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> with TickerProviderStateMixin {
  late GifController signGifController;
  bool value = false;
  final _signupFormKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _signupEmailController = TextEditingController();
  final TextEditingController _signupPasswordController =
      TextEditingController();
  final TextEditingController _signupPhoneController = TextEditingController();

  @override
  void initState() {
    signGifController = GifController(vsync: this);
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
          Form(
            key: _signupFormKey,
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
                    InputTextWidget(
                      fieldController: _userNameController,
                      inputIcon: Icons.person_outline_outlined,
                      obscure: false,
                      inputText: 'UserName',
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    InputTextWidget(
                      fieldController: _signupEmailController,
                      inputIcon: Icons.email_outlined,
                      obscure: false,
                      inputText: 'Email',
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    InputTextWidget(
                      fieldController: _signupPhoneController,
                      inputIcon: Icons.phone_android_outlined,
                      obscure: false,
                      inputText: 'Phone Number',
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    InputTextWidget(
                      fieldController: _signupPasswordController,
                      inputIcon: Icons.password,
                      obscure: false,
                      inputText: 'Password',
                      inputSuffix: Icons.visibility_off_outlined,
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    TxtBtn(
                      toCart: () => context.goNamed(RouteNames.otp.name),
                      addText: 'Register Now',
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: colOne,
                          focusColor: colOne,
                          hoverColor: colOne,
                          value: value,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue ?? false;
                            });
                          },
                        ),
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
      ),
    );
  }
}
