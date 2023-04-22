import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

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
