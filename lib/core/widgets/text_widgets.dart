import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Texts {
  static TextStyle textStyle({
    double? size,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return TextStyle(
      fontSize: size ?? 18.0.sp,
      fontFamily: fontFamily ?? "Euclid",
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Colors.black,
    );
  }

  static Widget normal(String label,
      {double? size, Color? color, String? fontFamily, TextAlign? textAlign}) {
    return Text(
      label,
      style: textStyle(size: size, color: color, fontFamily: fontFamily),
      textAlign: textAlign ?? TextAlign.center,

    );
  }

  static Widget block(String label,
      {double? size,
        Color? color,
        FontWeight? fontWeight,
        String? fontFamily,
        TextOverflow? overflow,
        int? maxLines,
        TextAlign? textAlign}) {
    return Text(
      label,
      style: textStyle(
        size: size,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
      overflow: overflow ?? TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines ?? 1,
    );
  }
}
