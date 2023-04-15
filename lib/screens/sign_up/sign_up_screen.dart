import 'package:flutter/material.dart';
import 'components/body.dart';

/// Sign Up screen
class SignUpScreen extends StatelessWidget {
  /// Route name
  static const String routeName = '/sign_up';

  /// Constructor
  const SignUpScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
