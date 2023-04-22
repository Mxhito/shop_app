import 'package:flutter/material.dart';
import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = '/forgot_password';

  const ForgotPasswordScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
