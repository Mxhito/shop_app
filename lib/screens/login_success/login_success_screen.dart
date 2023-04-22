import 'package:flutter/material.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static const String routeName = '/login_success';

  const LoginSuccessScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: const SizedBox(),
        title: const Text('Login Success'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
