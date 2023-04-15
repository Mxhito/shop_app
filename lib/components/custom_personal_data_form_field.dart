import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../screens/sign_in/components/sign_form.dart';
import 'custom_suffix_icon.dart';

/// Custom personal data form field
class CustomPersonalDataFormField extends StatelessWidget {

  /// Construcror
  const CustomPersonalDataFormField({
    super.key,
    this.isEmailField = false,
    this.isFirsNameFild = false,
    this.isSecondNameFild = false,
    this.isPhoneField = false,
    this.isAddressField = false,
  });
  /// For build email field
  final bool isEmailField;

  /// For build first name field
  final bool isFirsNameFild;

  /// For build second name field
  final bool isSecondNameFild;

  /// For build phone field
  final bool isPhoneField;

  /// For build address field
  final bool isAddressField;

  @override
  Widget build(final BuildContext context) {
    final SignFormData formData = Provider.of<SignFormData>(context);

    if (isEmailField) {
      return EmailFormField(formData: formData);
    } else if (isFirsNameFild) {
      return FirsNameFormField(formData: formData);
    } else if (isSecondNameFild) {
      return SecondNameFormField(formData: formData);
    } else if (isPhoneField) {
      return PhoneFormField(formData: formData);
    } else if (isAddressField) {
      return AddressFormField(formData: formData);
    } else {
      return Container(color: Colors.green);
    }
  }
}

///
class EmailFormField extends StatelessWidget {

  ///
  const EmailFormField({
    super.key,
    required this.formData,
  });
  ///
  final SignFormData formData;

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (final String? newValue) => formData.email = newValue,
      onChanged: (final String value) {
        if (value.isNotEmpty && formData.errors.contains(kEmailNullError)) {
          formData.removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          formData.removeError(error: kInvalidEmailError);
        }

        return;
      },
      validator: (final String? value) {
        if (value == null || value.isEmpty) {
          formData.addError(error: kEmailNullError);

          return '';
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          formData.addError(error: kInvalidEmailError);

          return '';
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

///
class FirsNameFormField extends StatelessWidget {

  ///
  const FirsNameFormField({
    super.key,
    required this.formData,
  });
  ///
  final SignFormData formData;

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      onSaved: (final String? newValue) => formData.firstName = newValue,
      onChanged: (final String value) {
        if (value.isNotEmpty &&
            formData.errors.contains(kFirstNamelNullError)) {
          formData.removeError(error: kFirstNamelNullError);
        }

        return;
      },
      validator: (final String? value) {
        if (value == null || value.isEmpty) {
          formData.addError(error: kFirstNamelNullError);

          return '';
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }
}

///
class SecondNameFormField extends StatelessWidget {

  ///
  const SecondNameFormField({
    super.key,
    required this.formData,
  });
  ///
  final SignFormData formData;

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      onSaved: (final String? newValue) => formData.secondName = newValue,
      onChanged: (final String value) {
        if (value.isNotEmpty &&
            formData.errors.contains(kSecondNamelNullError)) {
          formData.removeError(error: kSecondNamelNullError);
        }

        return;
      },
      validator: (final String? value) {
        if (value == null || value.isEmpty) {
          formData.addError(error: kSecondNamelNullError);

          return '';
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Second Name',
        hintText: 'Enter your second name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }
}

///
class PhoneFormField extends StatelessWidget {

  ///
  const PhoneFormField({
    super.key,
    required this.formData,
  });
  ///
  final SignFormData formData;

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (final String? newValue) => formData.phone = newValue,
      onChanged: (final String value) {
        if (value.isNotEmpty &&
            formData.errors.contains(kPhoneNumberNullError)) {
          formData.removeError(error: kPhoneNumberNullError);
        }

        return;
      },
      validator: (final String? value) {
        if (value == null || value.isEmpty) {
          formData.addError(error: kPhoneNumberNullError);

          return '';
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Phone',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Phone.svg',
        ),
      ),
    );
  }
}

///
class AddressFormField extends StatelessWidget {

  ///
  const AddressFormField({
    super.key,
    required this.formData,
  });
  ///
  final SignFormData formData;

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (final String? newValue) => formData.address = newValue,
      onChanged: (final String value) {
        if (value.isNotEmpty && formData.errors.contains(kAddressNullError)) {
          formData.removeError(error: kAddressNullError);
        }

        return;
      },
      validator: (final String? value) {
        if (value == null || value.isEmpty) {
          formData.addError(error: kAddressNullError);

          return '';
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Location point.svg',
        ),
      ),
    );
  }
}
