import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../screens/sign_in/components/sign_form.dart';

///
class CustomRememberMeCheckBox extends StatefulWidget {
  ///
  const CustomRememberMeCheckBox({super.key});

  @override
  State<CustomRememberMeCheckBox> createState() =>
      _CustomRememberMeCheckBoxState();
}

class _CustomRememberMeCheckBoxState extends State<CustomRememberMeCheckBox> {
  @override
  Widget build(final BuildContext context) {
    final SignFormData formData = Provider.of<SignFormData>(context);

    return Row(
      children: [
        Consumer<SignFormData>(
          builder: (final BuildContext context, final SignFormData cart, final Widget? child) {
            final SignFormData formData = Provider.of<SignFormData>(context);

            return Checkbox(
              value: formData.remember,
              activeColor: kPrimaryColor,
              onChanged: (final bool? value) {
                formData.isRemember(value: value);
              },
            );
          },
        ),
        GestureDetector(
          onTap: () {
            formData.isRemember(value: !(formData.remember ?? false));
          },
          child: const Text('Remember me'),
        ),
      ],
    );
  }
}
