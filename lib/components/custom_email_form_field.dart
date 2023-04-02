import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/components/sign_form.dart';

/// Custom email form field
class CustomEmailFormField extends StatelessWidget {
  /// Construcror
  const CustomEmailFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formData = Provider.of<SignFormData>(context);

    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => formData.email = newValue ?? '',
      onChanged: (value) {
        if (value.isNotEmpty && formData.errors.contains(kEmailNullError)) {
          formData.removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          formData.removeError(kInvalidEmailError);
        }

        return;
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !formData.errors.contains(kEmailNullError)) {
          formData.addError(kEmailNullError);
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !formData.errors.contains(kInvalidEmailError)) {
          formData.addError(kInvalidEmailError);
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}
