import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/core/widgets/spacing_widgets.dart';
import 'package:realestate/core/widgets/text_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/colors_constants.dart';

class PopupCustomRow extends StatelessWidget {
  PopupCustomRow({super.key, required this.icon, required this.title});
  IconData icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: ColorConstants.primaryColor,
          size: 14,
        ),
        Spacing.width1,
        Texts.block(title, color: ColorConstants.greyColor, size: 15.sp)
      ],
    );
  }
}
