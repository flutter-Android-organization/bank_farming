import 'package:bank_farming/src/features/account/presentation/login_landscape.dart';
import 'package:bank_farming/src/features/account/presentation/login_portrait.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:bank_farming/src/utils/reposive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
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
      body: ResponsiveWidget(
        compactChild: LoginPortrait(
          formsKey: _formKey,
          emailController: _emailController,
          passwordController: _passwordController,
          onPressed: () => context.goNamed(RouteNames.forget.name),
          onTap: () => context.goNamed(RouteNames.signup.name),
          toCart: _submitForm,
          emailValidator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          passwordValidator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
        mediumChild: LoginLandscape(
          formsKey: _formKey,
          emailController: _emailController,
          passwordController: _passwordController,
          onPressed: () => context.goNamed(RouteNames.forget.name),
          onTap: () => context.goNamed(RouteNames.signup.name),
          toCart: _submitForm,
          emailValidator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          passwordValidator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
      ),
    );
  }

  void _submitForm() {
    // On another side, can access all field values without saving form with instantValues
    if (_formKey.currentState!.validate() ||
        _formKey.currentState!.saveAndValidate()) {
      debugPrint(_formKey.currentState?.instantValue.toString());
      context.goNamed(RouteNames.pageNav.name);
      _emailController.clear();
      _passwordController.clear();
    }
    // context.goNamed(RouteNames.pageNav.name);
  }
}
