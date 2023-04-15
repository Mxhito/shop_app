import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../size_config.dart';
import '../../sign_in/components/sign_form.dart';
import 'forgot_password_form.dart';

/// Body of Forgot Password screen
class Body extends StatelessWidget {
  /// Constructor
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
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(textWidth),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Please enter your email and we will send \n' 'you a link to return to your account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                ChangeNotifierProvider(
                  create: (final _) => SignFormData(),
                  child: const ForgotPasswordForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
