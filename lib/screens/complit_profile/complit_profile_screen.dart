import 'package:flutter/material.dart';
import 'components/body.dart';

/// Sign Up screen
class ComplitProfileScreen extends StatelessWidget {
  /// Route name
  static const String routeName = '/complit_profile';

  /// Constructor
  const ComplitProfileScreen({super.key});

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
