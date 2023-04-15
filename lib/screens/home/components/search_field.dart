import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

/// Home search field
class SearchField extends StatelessWidget {
  ///
  const SearchField({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      height: 50,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (final value) {
          //* Search value
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search Product',
          prefixIcon: const Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(9),
          ),
        ),
      ),
    );
  }
}
