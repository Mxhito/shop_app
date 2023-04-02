import 'package:flutter/material.dart';

//* Content theme colors
/// Primary color
const kPrimaryColor = Color(0xFFFF7543);

/// Primary light color
const kPrimaryLightColor = Color(0xFFFFECDF);

/// Primary gradient color
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xffffa53e), Color(0xffff7643)],
);

/// Secondary color
const kSecondaryColor = Color(0xFFFF7533);

/// Text color
const kTextColor = Color(0xFF757575);

/// Animation duration
const kAnimationDuration = Duration(milliseconds: 200);

//* Form Error
/// Mask for email address
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

/// Email validator error
const String kEmailNullError = "Please Enter your email";

/// Email validator error
const String kInvalidEmailError = "Please Enter Valid Email";

/// Password validator error
const String kPassNullError = "Please Enter your password";

/// Password validator error
const String kShortPassError = "Password is too short";

/// Password validator error
const String kMatchPassError = "Passwords don't match";

/// Password validator error
const String kNamelNullError = "Please Enter your name";

/// Empty phone number error
const String kPhoneNumberNullError = "Please Enter your phone number";

/// Empty address error
const String kAddressNullError = "Please Enter your address";
