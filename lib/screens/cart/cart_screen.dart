import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/default_button.dart';
import '../../constants.dart';
import '../../models/cart.dart';
import '../../size_config.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  const CartScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckOurCard(),
    );
  }

  AppBar buildAppBar(final BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCarts.length} items',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      //height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xffdadada).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
                ),
                const Spacer(),
                const Text('Add voucher code'),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_forward_ios,
                    size: 12, color: kTextColor),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                  TextSpan(
                    text: 'Total:\n',
                    children: [
                      TextSpan(
                        text: '\$337.15',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: 'Check Out',
                    press: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
