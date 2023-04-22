import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;
  final double textWidth;
  final double imageHeigth;
  final double imageWidth;

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
