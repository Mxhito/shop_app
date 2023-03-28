// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/components/body.dart';
import 'package:shop_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //* You have to call it on your starting screen
    SizeConfig().init(context);

    return const Scaffold(
      body: Body(),
    );
  }
}
