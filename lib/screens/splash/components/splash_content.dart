import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

/// Splash content with info and images
class SplashContent extends StatelessWidget {
  /// Text of Splash Screen
  final String text;

  /// Image of Splash Screen
  final String image;

  /// Width of text
  final double textWidth;

  /// Height of image
  final double imageHeigth;

  /// Width of image
  final double imageWidth;

  /// Constructor
  const SplashContent({
    super.key,
    required this.text,
    required this.image,
    this.textWidth = 36,
    this.imageHeigth = 265,
    this.imageWidth = 235,
  });

  @override
  Widget build(final BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(textWidth),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(imageHeigth),
          width: getProportionateScreenWidth(imageWidth),
        ),
      ],
    );
  }
}
