import 'package:flutter/material.dart';
import '../../../size_config.dart';

/// Secrion title
class SectionTitle extends StatelessWidget {
  ///
  final String text;

  ///
  final GestureTapCallback press;

  ///
  const SectionTitle({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: const Text('See More'),
          ),
        ],
      ),
    );
  }
}
