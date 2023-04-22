import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/custom_personal_data_form_field.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../size_config.dart';
import '../../otp/otp_screen.dart';
import '../../sign_in/components/sign_form.dart';

class ComplitProfileForm extends StatefulWidget {
  const ComplitProfileForm({super.key});

  @override
  State<ComplitProfileForm> createState() => _ComplitProfileForm();
}

class _ComplitProfileForm extends State<ComplitProfileForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(final BuildContext context) {
    final formData = Provider.of<SignFormData>(context);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          const CustomPersonalDataFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          const CustomPersonalDataFormField(isFirsNameFild: true),
          SizedBox(height: getProportionateScreenHeight(30)),
          const CustomPersonalDataFormField(isSecondNameFild: true),
          SizedBox(height: getProportionateScreenHeight(30)),
          const CustomPersonalDataFormField(isPhoneField: true),
          SizedBox(height: getProportionateScreenHeight(30)),
          const CustomPersonalDataFormField(isAddressField: true),
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
                if (formData.errors.isEmpty) {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
