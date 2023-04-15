import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'otp_form.dart';

/// Body of OTP screen
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
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  'OTP Verification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(textWidth),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                const Text(
                  'We sent your code to +38 099 163 ***',
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'this code will expired in ',
                      textAlign: TextAlign.center,
                    ),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 30.0, end: 0),
                      duration: const Duration(seconds: 30),
                      builder: (final context, final value, final child) => Text(
                        '00:${value.toInt()}',
                        style: const TextStyle(color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                const OtpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                GestureDetector(
                  onTap: () {
                    //* Resent otp code
                  },
                  child: const Text(
                    'Resend OTP Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
