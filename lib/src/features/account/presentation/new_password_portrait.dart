import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/layout_widget.dart';
import '../../../common_widgets/txt_btn.dart';
import '../../../common_widgets/txt_form_field.dart';
import '../../../constant/color_constant.dart';
import '../../../routing/route_names.dart';

class NewPasswordPortrait extends StatelessWidget {
  const NewPasswordPortrait({
    super.key,
    this.newPasswordController,
    this.confirmPasswordController,
    this.validateNewPassword,
  });

  final TextEditingController? newPasswordController;
  final TextEditingController? confirmPasswordController;
  final String? Function(String?)? validateNewPassword;

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
          style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
        ),
      ],
      childrenSub: [
        FormBuilder(
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
                  TxtFormField(
                    controller: newPasswordController,
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
                    validator: validateNewPassword,
                  ),
                  SizedBox(height: 20),
                  TxtFormField(
                    controller: confirmPasswordController,
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
                    validator: validateNewPassword,
                  ),
                  SizedBox(height: 40),
                  TxtBtn(
                    toCart: () => context.goNamed(RouteNames.verifyChange.name),
                    addText: 'Reset Password',
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
