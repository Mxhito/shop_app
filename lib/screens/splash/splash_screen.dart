import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

/// Splash Screen
class SplashScreen extends StatelessWidget {
  /// Route name
  static const String routeName = '/splash';

  /// Constructor
  const SplashScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    //* You have to call it on your starting screen
    SizeConfig().init(context);

    return const Scaffold(
      body: Body(),
    );
  }
}
