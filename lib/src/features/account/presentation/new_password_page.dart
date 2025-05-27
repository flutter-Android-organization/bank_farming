import 'package:bank_farming/src/common_widgets/layout_widget.dart';
import 'package:bank_farming/src/features/account/presentation/new_password_landscape.dart';
import 'package:bank_farming/src/features/account/presentation/new_password_portrait.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    double screenHeight = ScreenUtil().screenHeight;
    double screenWidth = ScreenUtil().screenWidth;
    bool trueScreen = screenHeight >= 915.0 || screenWidth >= 412;

    return Scaffold(
      body: trueScreen ? NewPasswordLandscape() : NewPasswordPortrait(),
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
