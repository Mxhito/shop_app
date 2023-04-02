import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/custom_email_form_field.dart';
import 'package:shop_app/components/custom_password_form_field.dart';
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
    final formData = Provider.of<SignFormData>(context);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          const CustomEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const CustomPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                value: formData.remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  formData.isRemember(value: value);
                },
              ),
              const Text('Remember me'),
              const Spacer(),
              const Text(
                'Forgot Password',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
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
          SizedBox(
            height: getProportionateScreenHeight(20),
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

  ///
  void isRemember({bool? value}) {
    remember = value;
    notifyListeners();
  }
}
