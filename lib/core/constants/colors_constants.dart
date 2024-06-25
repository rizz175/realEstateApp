import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorConstants {
  static const Color blackColor = Color(0xFF232220);
  static const Color greyColor = Color(0xFFA5957E);
  static const Color primaryColor = Color(0xFFFC9E12);

  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: const [
      0.3,
      2,
    ],
    colors: [
      Colors.grey.shade50,
      ColorConstants.primaryColor.withOpacity(0.01),
    ],
  );
}
