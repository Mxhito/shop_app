import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/no_account_text.dart';
import '../../../components/social_card.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

/// Body of the Sign In screen
class Body extends StatelessWidget {
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
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(textWidth),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Sign in with your email and password \n'
                  'or continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                ChangeNotifierProvider(
                  create: (final _) => SignFormData(),
                  child: const SignForm(),
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
                  height: getProportionateScreenWidth(16),
                ),
                const NoAccountText(),
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
