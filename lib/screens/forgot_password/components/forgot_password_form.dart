import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/custom_personal_data_form_field.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../size_config.dart';
import '../../sign_in/components/sign_form.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(final BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const CustomPersonalDataFormField(isEmailField: true),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Consumer<SignFormData>(
            builder: (final context, final cart, final child) {
              final formData = Provider.of<SignFormData>(context);

              return FormError(
                errors: formData.errors,
              );
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState?.validate() != null) {
                _formKey.currentState?.save();
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          const NoAccountText(),
        ],
      ),
    );
  }
}
