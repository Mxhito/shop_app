import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/components/sign_form.dart';

/// Custom password form field
class CustomPasswordFormField extends StatelessWidget {
  /// Constructor
  const CustomPasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    const int passwordNormalLenght = 8;

    final formData = Provider.of<SignFormData>(context);

    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => formData.password = newValue ?? '',
      onChanged: (value) {
        if (value.isNotEmpty && formData.errors.contains(kPassNullError)) {
          formData.removeError(kPassNullError);
        } else if (value.length >= passwordNormalLenght &&
            formData.errors.contains(kShortPassError)) {
          formData.removeError(kShortPassError);
        }

        return;
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !formData.errors.contains(kPassNullError)) {
          formData.addError(kPassNullError);
        } else if (value.length < passwordNormalLenght &&
            !formData.errors.contains(kShortPassError)) {
          formData.addError(kShortPassError);
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }
}
