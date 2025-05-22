import 'package:bank_farming/src/common_widgets/layout_widget.dart';
import 'package:bank_farming/src/common_widgets/link_txt.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/input_text_widget.dart';
import '../../../common_widgets/txt_btn.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  final _emailFormKey = GlobalKey<FormState>(debugLabel: 'email_form_key');
  final TextEditingController _receiverMailController = TextEditingController();

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
            'Don\'t worry! it occurs. Please enter the email address linked with your account.',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Lottie.asset(
                        'assets/images/animations/forgot.json',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    SizedBox(height: 20),
                    InputTextWidget(
                      fieldController: _receiverMailController,
                      inputIcon: Icons.email_outlined,
                      obscure: false,
                      inputText: 'Enter your email',
                      validator: _validateReceiveEmail,
                    ),
                    SizedBox(height: 40),
                    TxtBtn(
                      toCart: () => context.goNamed(RouteNames.otp.name),
                      addText: 'Send Code',
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Remember Password?'),
                        LinkTxt(data: 'Login', onTap: () => context.pop(context)),
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

  String? _validateReceiveEmail(value) {
    if (value == null ||
        value.isEmpty ||
        !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'Please enter your Email';
    }
    if (value.length <= 20) {
      return 'Email must be at least 20 or equal characters';
    }
    return null;
  }

  void _submitMail() {
    if (_emailFormKey.currentState!.validate()) {}
  }
}
