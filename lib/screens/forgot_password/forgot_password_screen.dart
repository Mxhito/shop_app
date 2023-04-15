import 'package:flutter/material.dart';
import 'components/body.dart';

/// Forgot password screen
class ForgotPasswordScreen extends StatelessWidget {
  /// Route name
  static const String routeName = '/forgot_password';

  /// Constructor
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
