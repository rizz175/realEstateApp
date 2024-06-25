import 'package:countup/countup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:realestate/core/constants/assets_constants.dart';
import 'package:realestate/core/constants/colors_constants.dart';
import 'package:realestate/core/widgets/decorations.dart';
import 'package:realestate/core/widgets/text_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../../core/widgets/image_card.dart';
import '../../../core/widgets/spacing_widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 100.h,
      width: 100.w,
      decoration: BoxDecoration(gradient: ColorConstants.primaryGradient),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacing.height05,
            headerBar(),
            Spacing.height03,
            WidgetAnimator(
                incomingEffect: WidgetTransitionEffects(
                    delay: const Duration(milliseconds: 3000),
                    offset: const Offset(0, 30),
                    curve: Curves.fastOutSlowIn,
                    duration: const Duration(milliseconds: 900)),
                child: Texts.block("Hi, Marina",
                    size: 20.sp, color: ColorConstants.greyColor)),
            Spacing.height005,
            WidgetAnimator(
                incomingEffect: WidgetTransitionEffects(
                    delay: const Duration(milliseconds: 3500),
                    offset: const Offset(0, 30),
                    curve: Curves.fastOutSlowIn,
                    duration: const Duration(milliseconds: 2000)),
                child: Texts.normal("Let's select your perfect place",
                    size: 24.sp,
                    color: ColorConstants.blackColor,
                    textAlign: TextAlign.start)),
            Spacing.height02,
            analyticsBar(),
            Spacing.height02,
            placesListSection(),
          ],
        ),
      ),
    );
  }

  placesListSection() {
    return WidgetAnimator(
        incomingEffect: WidgetTransitionEffects(
            delay: const Duration(milliseconds: 4500),
            offset: const Offset(0, 30),
            curve: Curves.fastOutSlowIn,
            duration: const Duration(milliseconds: 1200)),
        child: StaggeredGridView.countBuilder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2, // number of columns
          itemCount: AssetsConstants.imagesList.length, // number of items
          itemBuilder: (BuildContext context, int index) {
            return ImageCard(
              title: 'Gladkova St. 25',
              img: AssetsConstants.imagesList[index],
            ); // Large image covering 2x2 grid
          },
          staggeredTileBuilder: (int index) {
            if (index == 0) {
              return StaggeredTile.extent(
                  2, 20.h); // Large image covering 2x2 grid
            } else if (index == 1) {
              return const StaggeredTile.count(
                  1, 2); // Vertical image covering 1x2 grid
            } else {
              return const StaggeredTile.count(
                  1, 1); // Small images covering 1x1 grid
            }
          },
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ));
  }

  analyticsBar() {
    return WidgetAnimator(
      incomingEffect: WidgetTransitionEffects(
          delay: const Duration(milliseconds: 4000),
          offset: const Offset(0, 30),
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 1200)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: Decorations.circleDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Texts.normal("BUY", color: Colors.white, size: 15.sp),
                  Spacing.height02,
                  Column(
                    children: [
                      Countup(
                        begin: 500,
                        end: 1034,
                        duration: const Duration(seconds: 2),
                        separator: ' ',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25.sp,
                            fontFamily: "Euclid",
                            color: Colors.white),
                      ),
                      Texts.normal("offers", color: Colors.white, size: 15.sp)
                    ],
                  ),
                  Texts.normal("")
                ],
              ),
            ),
          ),
          Spacing.width1,
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: Decorations.whiteRoundBorder,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Texts.normal("RENT",
                      color: ColorConstants.greyColor, size: 15.sp),
                  Spacing.height02,
                  Column(
                    children: [
                      Countup(
                        begin: 900,
                        end: 2212,
                        duration: const Duration(seconds: 2),
                        separator: ' ',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25.sp,
                            fontFamily: "Euclid",
                            color: ColorConstants.greyColor),
                      ),
                      Texts.normal("offers",
                          color: ColorConstants.greyColor, size: 15.sp)
                    ],
                  ),
                  Texts.normal("")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  headerBar() {
    return WidgetAnimator(
      incomingEffect: WidgetTransitionEffects(
          delay: const Duration(milliseconds: 800),
          offset: const Offset(0, 30),
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 900)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
              delay: const Duration(milliseconds: 1000),
              curve: Curves.fastOutSlowIn,
            ),
            outgoingEffect: WidgetTransitionEffects.outgoingSlideOutToRight(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: Decorations.whiteRoundBorder,
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_sharp,
                    color: ColorConstants.greyColor,
                    size: 20,
                  ),
                  Texts.block(" Saint Petersburg",
                      size: 16.sp, color: ColorConstants.greyColor)
                ],
              ),
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(AssetsConstants.girlAvatar),
            backgroundColor: ColorConstants.primaryColor,
          )
        ],
      ),
    );
  }
}
