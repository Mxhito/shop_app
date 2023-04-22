import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../size_config.dart';
import '../../sign_in/components/sign_form.dart';
import 'complit_profile_form.dart';

/// Body of Complit Profile screen
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
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  'Complit Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(textWidth),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Compete your details or continue \n with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                ChangeNotifierProvider(
                  create: (final _) => SignFormData(),
                  child: const ComplitProfileForm(),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                SizedBox(
                  height: getProportionateScreenWidth(20),
                ),
                const Text(
                  'By contining your confirm that you agree \n with our Term and Condition',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
