import 'package:flutter/material.dart';
import 'components/body.dart';

class ComplitProfileScreen extends StatelessWidget {
  static const String routeName = '/complit_profile';

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
