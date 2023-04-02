import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/social_card.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/components/sign_form.dart';
import 'package:shop_app/size_config.dart';

/// Text of the sign in screen
class Body extends StatelessWidget {
  /// Constructor
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(textWidth),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Sign in with your email and password \n' +
                      'or continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                ChangeNotifierProvider(
                  create: (_) => SignFormData(),
                  child: const SignForm(),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenWidth(16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
