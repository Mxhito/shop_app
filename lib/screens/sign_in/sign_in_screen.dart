import 'package:flutter/material.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign_in';

  const SignInScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
