import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';

/// Body of the Login Success screen
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(final BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          'assets/images/success.png',
          //height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: 'Back to home',
            press: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
