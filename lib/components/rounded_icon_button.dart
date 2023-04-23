import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconData;
  final GestureTapCallback press;

  const RoundedIconButton({
    super.key,
    required this.iconData,
    required this.press,
  });

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: IconButton(
        padding: const EdgeInsets.only(left: 10),
        splashRadius: 25,
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (final states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        onPressed: press,
        icon: Icon(iconData),
      ),
    );
  }
}
