import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  final double width;
  final double aspectRatio;
  final Product product;
  final GestureTapCallback press;

  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
    required this.press,
  });

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images.first),
                ),
              ),
              Text(
                product.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      width: getProportionateScreenWidth(28),
                      height: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        colorFilter: product.isFavourite
                            ? const ColorFilter.mode(
                                Color(0xffff4848), BlendMode.srcIn)
                            : const ColorFilter.mode(
                                Color(0xffdbdee4), BlendMode.srcIn),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
