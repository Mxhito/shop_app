import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  final String text;
  final String icon;
  final GestureTapCallback press;

  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xfff5f6f9),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 22,
                colorFilter:
                    const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
              ),
              const SizedBox(width: 20),
              Expanded(child: Text(text)),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
