import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/core/constants/colors_constants.dart';
import 'package:realestate/core/widgets/circle_widget.dart';
import 'package:realestate/core/widgets/text_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class ImageCard extends StatelessWidget {
  String img;
  String title;

  ImageCard({required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    // Replace `Image.network` with your own image loading logic
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            img, // Replace with your image URL or path
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
                delay: const Duration(milliseconds: 1000),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.fastOutSlowIn,
              ),
              outgoingEffect: WidgetTransitionEffects.outgoingSlideOutToRight(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: ColorConstants.greyColor.withOpacity(.6)),
                    child: Row(
                      children: [
                        Expanded(
                            child: Texts.block("    $title  ",
                                size: 15.sp, color: Colors.white)),
                        CircleWidget(
                            color: Colors.white,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
