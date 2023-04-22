import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../screens/sign_in/components/sign_form.dart';
import 'custom_suffix_icon.dart';

class CustomPasswordFormField extends StatelessWidget {
  /// For build confirm password field
  final bool isConfirmFild;

  const CustomPasswordFormField({
    super.key,
    this.isConfirmFild = false,
  });

  @override
  Widget build(final BuildContext context) {
    const int passwordNormalLenght = 8;

    final SignFormData formData = Provider.of<SignFormData>(context);

    return isConfirmFild
        ? ConfirmPasswordFormField(
            formData: formData,
            passwordNormalLenght: passwordNormalLenght,
          )
        : DefaultPasswordFormField(
            formData: formData,
            passwordNormalLenght: passwordNormalLenght,
          );
  }
}

class DefaultPasswordFormField extends StatelessWidget {
  final SignFormData formData;
  final int passwordNormalLenght;

  const DefaultPasswordFormField({
    super.key,
    required this.formData,
    required this.passwordNormalLenght,
  });

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      obscureText: true,
      onSaved: (final String? newValue) => formData.password = newValue,
      onChanged: (final String value) {
        if (value.isNotEmpty && formData.errors.contains(kPassNullError)) {
          formData.removeError(error: kPassNullError);
        } else if (value.length >= passwordNormalLenght &&
            formData.errors.contains(kShortPassError)) {
          formData.removeError(error: kShortPassError);
        }
        formData.password = value;
      },
      validator: (final String? value) {
        if (value == null || value.isEmpty) {
          formData.addError(error: kPassNullError);

          return '';
        } else if (value.length < passwordNormalLenght) {
          formData.addError(error: kShortPassError);

          return '';
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

///
class ConfirmPasswordFormField extends StatelessWidget {
  final SignFormData formData;
  final int passwordNormalLenght;

  const ConfirmPasswordFormField({
    super.key,
    required this.formData,
    required this.passwordNormalLenght,
  });

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      obscureText: true,
      onSaved: (final String? newValue) => formData.confirmPassword = newValue,
      onChanged: (final String value) {
        if (value.isNotEmpty) {
          formData.removeError(error: kConfirmPassNullError);
        }
        if (value == formData.password) {
          formData.removeError(error: kMatchPassError);
        }
        formData.confirmPassword = value;
      },
      validator: (final String? value) {
        if (value == null || value.isEmpty) {
          formData.addError(error: kConfirmPassNullError);

          return '';
        } else if (formData.password != value) {
          formData.addError(error: kMatchPassError);

          return '';
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }
}
