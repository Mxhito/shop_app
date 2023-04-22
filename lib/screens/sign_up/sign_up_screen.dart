import 'package:flutter/material.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign_up';

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
