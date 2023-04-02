import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

/// Sign in form
class SignForm extends StatefulWidget {
  /// Constructor
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const CustomEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          const CustomPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Consumer<SignFormData>(
            builder: (context, cart, child) {
              final formData = Provider.of<SignFormData>(context);

              return FormError(
                errors: formData.errors,
              );
            },
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState?.validate() != null) {
                _formKey.currentState?.save();
              }
            },
          ),
        ],
      ),
    );
  }
}

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
        if (value.isNotEmpty) {
          formData.addError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          formData.removeError(kInvalidEmailError);
        }

        formData.email = value; // Update email variable
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          formData.addError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
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

/// Custom password form field
class CustomPasswordFormField extends StatelessWidget {
  /// Constructor
  const CustomPasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
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

/// State of Sign Form
class SignFormData extends ChangeNotifier {
  /// Variables
  String? email;

  ///
  String? password;

  ///
  bool? remember = false;

  ///
  List<String> errors = [];

  /// Getters
  String? get getEmail => email;

  ///
  String? get getPassword => password;

  ///
  bool? get getRemember => remember;

  ///
  List<String>? get getErrors => errors;

  ///
  void addError(String error) {
    if (!errors.contains(error)) {
      errors.add(error);
      notifyListeners();
    }
  }

  ///
  void removeError(String error) {
    errors.remove(error);
    notifyListeners();
  }
}
