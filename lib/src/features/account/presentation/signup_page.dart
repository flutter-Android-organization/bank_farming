import 'package:bank_farming/src/features/account/presentation/signup_landscape.dart';
import 'package:bank_farming/src/features/account/presentation/signup_portrait.dart';
import 'package:bank_farming/src/utils/reposive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import '../../../routing/route_names.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage>
    with TickerProviderStateMixin {
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
      body: ResponsiveWidget(
        compactChild: SignupPortrait(
          userNameController: _userNameController,
          signupEmailController: _signupEmailController,
          signupPhoneController: _signupPhoneController,
          signupPasswordController: _signupPasswordController,
          toRegister: () => context.goNamed(RouteNames.otp.name),
        ),
        mediumChild: SignupLandscape(
          userNameController: _userNameController,
          signupEmailController: _signupEmailController,
          signupPhoneController: _signupPhoneController,
          signupPasswordController: _signupPasswordController,
          toRegister: () => context.goNamed(RouteNames.otp.name),
        ),
      ),
    );
  }
}
