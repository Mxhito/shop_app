import 'package:flutter/material.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

/// Default button of my app
class DefaultButton extends StatelessWidget {
  /// Text of button
  final String text;

  /// Action of button when it pressed
  final Function() press;

  /// Constructor
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
