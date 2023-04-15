import 'package:flutter/material.dart';
import 'components/body.dart';

/// OTP screen
class OtpScreen extends StatelessWidget {
  /// Route name
  static const String routeName = '/otp';

  /// Constructor
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
