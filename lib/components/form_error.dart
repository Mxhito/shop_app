import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../screens/sign_in/components/sign_form.dart';
import '../size_config.dart';

/// Error form
class FormError extends StatelessWidget {
  /// List of errors
  final List<String?> errors;

  /// Constructor
  const FormError({
    super.key,
    required this.errors,
  });

  @override
  Widget build(final BuildContext context) {
    final signFormData = Provider.of<SignFormData>(context, listen: false);

    /// Svg picture size
    const double svgPictureSize = 14;

    return Column(
      children: List.generate(
        signFormData.errors.length,
        (final index) => Row(
          children: [
            SvgPicture.asset(
              'assets/icons/Error.svg',
              height: getProportionateScreenHeight(svgPictureSize),
              width: getProportionateScreenWidth(svgPictureSize),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Text(signFormData.errors[index]),
          ],
        ),
      ),
    );
  }
}
