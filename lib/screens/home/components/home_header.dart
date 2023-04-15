import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_button_with_counter.dart';
import 'search_field.dart';

/// Home header
class HomeHeader extends StatelessWidget {
  ///
  const HomeHeader({
    super.key,
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
          const SearchField(),
          IconButtonWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () {},
          ),
          IconButtonWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
