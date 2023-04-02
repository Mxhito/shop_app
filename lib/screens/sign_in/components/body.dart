import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
          child: Column(
            children: [
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
              ChangeNotifierProvider(
                create: (_) => SignFormData(),
                child: const SignForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
