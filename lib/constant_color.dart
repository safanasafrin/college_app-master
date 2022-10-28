import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFFB71C1C);
const Color kSecondaryColor = Color(0xFFD50000);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kTextGreyColor = Color(0xFF212121);
const Color kTextBlackColor = Color(0xFF000000);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);

const kDefaultPadding = 18.0;

const sizedBox = SizedBox(
  height: kDefaultPadding,
);

const kHalfSizedBox = SizedBox(
  height: kDefaultPadding / 2,
);
//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
