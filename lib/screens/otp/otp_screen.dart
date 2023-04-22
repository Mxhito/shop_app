import 'package:flutter/material.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static const String routeName = '/otp';

  const OtpScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
