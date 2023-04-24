import 'package:flutter/widgets.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/complit_profile/complit_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

/// All routes will be availiable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (final context) => const SplashScreen(),
  SignInScreen.routeName: (final context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (final context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (final context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (final context) => const SignUpScreen(),
  ComplitProfileScreen.routeName: (final context) => const ComplitProfileScreen(),
  OtpScreen.routeName: (final context) => const OtpScreen(),
  HomeScreen.routeName: (final context) => const HomeScreen(),
  DetailsScreen.routeName: (final context) => const DetailsScreen(),
  CartScreen.routeName: (final context) => const CartScreen(),
};
