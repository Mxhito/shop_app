import 'package:flutter/material.dart';
import 'size_config.dart';

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

///
const String kEmailNullError = "Please Enter your email";

///
const String kInvalidEmailError = "Please Enter Valid Email";

///
const String kPassNullError = "Please Enter your password";

///
const String kShortPassError = "Password is too short";

///
const String kConfirmPassNullError = 'Please Repeat your password';

///
const String kMatchPassError = "Passwords don't match";

///
const String kFirstNamelNullError = "Please Enter your first name";

///
const String kSecondNamelNullError = "Please Enter your second name";

///
const String kPhoneNumberNullError = "Please Enter your phone number";

///
const String kAddressNullError = "Please Enter your address";

/// OTP inpud decoration
final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

///
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kTextColor),
  );
}
