import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';

class Decorations
{

  static BoxDecoration whiteRoundBorder= BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10)
      , boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 1,
      blurRadius: 5,
      offset: const Offset(0, 3),
    ),
  ],
  );
  static BoxDecoration greyRoundBorder= BoxDecoration(
    color: ColorConstants.greyColor.withOpacity(.9),
    borderRadius: BorderRadius.circular(10)
    , boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 1,
      blurRadius: 5,
      offset: const Offset(0, 3),
    ),
  ],
  );
  static BoxDecoration circleDecoration= const BoxDecoration(
  color: ColorConstants.primaryColor,
  shape: BoxShape.circle
  );
}