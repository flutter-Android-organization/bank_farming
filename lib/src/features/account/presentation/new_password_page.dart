import 'package:bank_farming/src/common_widgets/layout_widget.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/input_text_widget.dart';
import '../../../common_widgets/txt_btn.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final _changeFormKey = GlobalKey();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
            'Create new password',
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Your new password must be unique from those previously used.',
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/random/Reset password.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    SizedBox(height: 20),
                    InputTextWidget(
                      fieldController: _newPasswordController,
                      inputIcon: Icons.password,
                      obscure: false,
                      inputText: 'New Password',
                      validator: _validateNewPassword,
                    ),
                    SizedBox(height: 20),
                    InputTextWidget(
                      fieldController: _confirmPasswordController,
                      inputIcon: Icons.password,
                      obscure: false,
                      inputText: 'Confirm Password',
                      validator: _validateNewPassword,
                    ),
                    SizedBox(height: 40),
                    TxtBtn(
                      toCart:
                          () => context.goNamed(RouteNames.verifyChange.name),
                      addText: 'Reset Password',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? _validateNewPassword(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Password';
    }
    if (value.length <= 20) {
      return 'Password must be at least 20 or equal characters';
    }
    return null;
  }
}
