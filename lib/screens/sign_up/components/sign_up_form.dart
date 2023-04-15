import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/custom_password_form_field.dart';
import '../../../components/custom_personal_data_form_field.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../size_config.dart';
import '../../complit_profile/complit_profile_screen.dart';
import '../../sign_in/components/sign_form.dart';

/// Sign Up form
class SignUpForm extends StatefulWidget {
  /// Constructor
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(final BuildContext context) {
    final formData = Provider.of<SignFormData>(context);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          const CustomPersonalDataFormField(isEmailField: true),
          SizedBox(height: getProportionateScreenHeight(30)),
          const CustomPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          const CustomPasswordFormField(isConfirmFild: true),
          SizedBox(height: getProportionateScreenHeight(30)),
          Consumer<SignFormData>(
            builder: (final context, final formData, final child) {
              return FormError(
                errors: formData.errors,
              );
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState?.validate() != null) {
                _formKey.currentState?.save();

                //* If all are valid then go to success screen
                if (formData.errors.isEmpty &&
                    formData.password == formData.confirmPassword) {
                  Navigator.pushNamed(context, ComplitProfileScreen.routeName);
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
