import 'package:bank_farming/src/features/account/presentation/new_password_landscape.dart';
import 'package:bank_farming/src/features/account/presentation/new_password_portrait.dart';
import 'package:bank_farming/src/utils/reposive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: ResponsiveWidget(
        compactChild: NewPasswordPortrait(
          newPasswordController: _newPasswordController,
          confirmPasswordController: _confirmPasswordController,
        ),
        mediumChild: NewPasswordLandscape(
          newPasswordController: _newPasswordController,
          confirmPasswordController: _confirmPasswordController,
        ),
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
