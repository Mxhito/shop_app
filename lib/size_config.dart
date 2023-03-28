import 'package:flutter/material.dart';

/// Adjusting the size for correct size representation
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? _screenWidth;
  static double? _screenHeight;
  static double? _defaultSize;
  static Orientation? _orientation;

  /// Initialize fields
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData?.size.width;
    _screenHeight = _mediaQueryData?.size.height;
    _orientation = _mediaQueryData?.orientation;
  }
}

/// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  /// 812 is the layout height that designer use
  const double designerHeigth = 812.0;

  final double screenHeight = SizeConfig._screenHeight ?? 0.0;

  return (inputHeight / designerHeigth) * screenHeight;
}

/// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  /// 375 is the layout width that designer use
  const double designerWidth = 375.0;

  final double screenWidth = SizeConfig._screenWidth ?? 0.0;

  return (inputWidth / designerWidth) * screenWidth;
}
