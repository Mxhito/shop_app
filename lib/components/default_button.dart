import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

/// Default button of my app
class DefaultButton extends StatelessWidget {
  /// Text of button
  final String text;

  /// Action of button when it pressed
  final VoidCallback press;

  /// Height of button
  final double buttonHeiht;

  /// Border radius of button
  final double buttonBorderRadius;

  /// Width of text
  final double textWidth;

  /// Constructor
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
    this.buttonHeiht = 56,
    this.buttonBorderRadius = 20,
    this.textWidth = 18,
  });

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(buttonHeiht),
      width: double.infinity,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadius),
        ),
        backgroundColor: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(textWidth),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
