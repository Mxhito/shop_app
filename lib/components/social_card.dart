import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../size_config.dart';

/// Auth with social media
class SocialCard extends StatelessWidget {
  /// Icon
  final String icon;

  /// On press
  final VoidCallback press;

  const SocialCard({
    super.key,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 245, 246, 249),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
