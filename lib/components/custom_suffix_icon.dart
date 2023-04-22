import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  /// Icon of text form
  final String svgIcon;

  const CustomSuffixIcon({super.key, required this.svgIcon});

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
