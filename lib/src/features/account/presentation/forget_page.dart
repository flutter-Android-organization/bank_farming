import 'package:bank_farming/src/common_widgets/layout_widget.dart';
import 'package:bank_farming/src/common_widgets/link_txt.dart';
import 'package:bank_farming/src/features/account/presentation/forget_landscape.dart';
import 'package:bank_farming/src/features/account/presentation/forget_portrait.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
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
  final _emailFormKey = GlobalKey<FormBuilderState>();
  final TextEditingController _receiverMailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtil().screenHeight;
    double screenWidth = ScreenUtil().screenWidth;
    bool trueScreen = screenHeight >= 915.0 || screenWidth >= 412;

    return Scaffold(
      body:
          trueScreen
              ? ForgetLandscape(
                receiverMailController: _receiverMailController,
                forgetFormKey: _emailFormKey,
                sendCodeBtn: _submitMail,
                backLogin: () => context.pop(context),
                forgetEmailValidator: FormBuilderValidators.compose([]),
              )
              : ForgetPortrait(
                receiverMailController: _receiverMailController,
                forgetFormKey: _emailFormKey,
                sendCodeBtn: _submitMail,
                backLogin: () => context.pop(context),
                forgetEmailValidator: FormBuilderValidators.compose([]),
              ),
    );
  }

  void _submitMail() {
    if (_emailFormKey.currentState!.validate()) {
      context.goNamed(RouteNames.otp.name);
    }
  }
}
