import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/social_card.dart';
import '../../../size_config.dart';
import '../../sign_in/components/sign_form.dart';
import 'sign_up_form.dart';

/// Body of Sign Up screen
class Body extends StatelessWidget {
  /// Construct
  const Body({super.key});

  @override
  Widget build(final BuildContext context) {
    const double textWidth = 28;

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Register Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(textWidth),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Compete your details or continue \n' 'with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                ChangeNotifierProvider(
                  create: (final _) => SignFormData(),
                  child: const SignUpForm(),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: _signInWithSocial,
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: _signInWithSocial,
                    ),
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      press: _signInWithSocial,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenWidth(20),
                ),
                const Text(
                  'By contining your confirm that you agree \n' 'with our Term and Condition',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signInWithSocial() {
    return;
  }
}
