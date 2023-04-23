import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = '/details';

  const DetailsScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final ProductDetailsArgument? argument =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArgument?;

    return Scaffold(
      backgroundColor: const Color(0xfff5f6f9),
      appBar: CustomAppBar(rating: argument?.product.rating ?? 0.0),
      body: Body(product: argument?.product),
    );
  }
}

class ProductDetailsArgument {
  final Product product;

  ProductDetailsArgument({required this.product});
}
