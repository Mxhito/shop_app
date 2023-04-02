import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/components/body.dart';

/// Sign in screen
class SignInScreen extends StatelessWidget {
  /// Route name
  static const String routeName = '/sign_in';

  /// Constructor
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
