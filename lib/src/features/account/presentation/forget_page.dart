import 'package:bank_farming/src/features/account/presentation/forget_landscape.dart';
import 'package:bank_farming/src/features/account/presentation/forget_portrait.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:bank_farming/src/utils/reposive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  final _emailFormKey = GlobalKey<FormBuilderState>();
  final TextEditingController _receiverMailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        compactChild: ForgetPortrait(
          receiverMailController: _receiverMailController,
          forgetFormKey: _emailFormKey,
          sendCodeBtn: _submitMail,
          backLogin: () => context.pop(context),
          forgetEmailValidator: FormBuilderValidators.compose([]),
        ),
        mediumChild: ForgetLandscape(
          receiverMailController: _receiverMailController,
          forgetFormKey: _emailFormKey,
          sendCodeBtn: _submitMail,
          backLogin: () => context.pop(context),
          forgetEmailValidator: FormBuilderValidators.compose([]),
        ),
      ),
    );
  }

  void _submitMail() {
    if (_emailFormKey.currentState!.validate()) {
      context.goNamed(RouteNames.otp.name);
    }
  }
}
