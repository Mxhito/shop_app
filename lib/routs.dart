import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

/// All routes will be availiable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
};