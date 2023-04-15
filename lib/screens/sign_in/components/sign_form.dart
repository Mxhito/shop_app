import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/custom_password_form_field.dart';
import '../../../components/custom_personal_data_form_field.dart';
import '../../../components/custom_remember_me_check_box.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../size_config.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../../login_success/login_success_screen.dart';

/// Sign In form
class SignForm extends StatefulWidget {
  /// Constructor
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
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
          Row(
            children: [
              const CustomRememberMeCheckBox(),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  ForgotPasswordScreen.routeName,
                ),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Consumer<SignFormData>(
            builder: (final context, final cart, final child) {
              final formData = Provider.of<SignFormData>(context);

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
                if (formData.errors.isEmpty) {
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              }
            },
          ),
        ],
      ),
    );
  }
}

/// State of Sign Form
class SignFormData extends ChangeNotifier {
  /// Variables
  String? email;

  ///
  String? firstName;

  ///
  String? secondName;

  ///
  String? phone;

  ///
  String? address;

  ///
  String? password;

  ///
  String? confirmPassword;

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
  void addError({required final String error}) {
    if (!errors.contains(error)) {
      errors.add(error);
      notifyListeners();
    }
  }

  ///
  void removeError({required final String error}) {
    errors.remove(error);
    notifyListeners();
  }

  ///
  void isRemember({final bool? value}) {
    remember = value;
    notifyListeners();
  }
}
