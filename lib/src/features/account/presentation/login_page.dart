import 'package:bank_farming/src/common_widgets/horizontal_bar.dart';
import 'package:bank_farming/src/common_widgets/icon_btn.dart';
import 'package:bank_farming/src/common_widgets/input_text_widget.dart';
import 'package:bank_farming/src/common_widgets/layout_widget.dart';
import 'package:bank_farming/src/common_widgets/link_txt.dart';
import 'package:bank_farming/src/common_widgets/txt_btn.dart';
import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
            key: _formKey,
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
                    InputTextWidget(
                      fieldController: _emailController,
                      inputIcon: Icons.email_outlined,
                      obscure: false,
                      inputText: 'Enter your email',
                      validator: _validateEmail,
                    ),
                    SizedBox(height: 20),
                    InputTextWidget(
                      fieldController: _passwordController,
                      inputIcon: Icons.password,
                      obscure: true,
                      inputText: 'Enter your password',
                      inputSuffix: Icons.visibility_off_outlined,
                      validator: _validatePassword,
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TxtBtbOne(
                          onPressed:
                              () => context.goNamed(RouteNames.forget.name),
                          txtData: 'Forget password?',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TxtBtn(toCart: _submitForm, addText: 'Login'),
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
                          onTap: () => context.goNamed(RouteNames.signup.name),
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

  String? _validateEmail(value) {
    // if (value == null ||
    //     value.isEmpty ||
    //     !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
    //   return 'Please enter your Email';
    // }
    // if (value.length <= 8) {
    //   return 'Email must be at least 20 or equal characters';
    // }
    return null;
  }

  String? _validatePassword(value) {
    // if (value == null || value.isEmpty) {
    //   return 'Please enter your Password';
    // }
    // if (value.length <= 8) {
    //   return 'Password must be at least 8 or equal characters';
    // }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.goNamed(RouteNames.pageNav.name);
    }
  }
}
